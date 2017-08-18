THEOS_DEVICE_IP = 192.168.1.104

ARCHS = armv7 arm64
TARGET = iPhone:latest:7.0

include $(THEOS)/makefiles/common.mk



TWEAK_NAME = xys


xys_FILES =  src/Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
