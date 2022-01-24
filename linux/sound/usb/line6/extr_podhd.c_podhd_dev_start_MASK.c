#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  ifcdev; struct usb_device* usbdev; } ;
struct usb_line6_podhd {int firmware_version; TYPE_1__ line6; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int LINE6_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_REQ_SET_FEATURE ; 
 int USB_TYPE_STANDARD ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int,int*,int) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_line6_podhd *pod)
{
	int ret;
	u8 *init_bytes;
	int i;
	struct usb_device *usbdev = pod->line6.usbdev;

	init_bytes = FUNC2(8, GFP_KERNEL);
	if (!init_bytes)
		return -ENOMEM;

	ret = FUNC4(usbdev, FUNC6(usbdev, 0),
					0x67, USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
					0x11, 0,
					NULL, 0, LINE6_TIMEOUT * HZ);
	if (ret < 0) {
		FUNC0(pod->line6.ifcdev, "read request failed (error %d)\n", ret);
		goto exit;
	}

	/* NOTE: looks like some kind of ping message */
	ret = FUNC4(usbdev, FUNC5(usbdev, 0), 0x67,
					USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
					0x11, 0x0,
					init_bytes, 3, LINE6_TIMEOUT * HZ);
	if (ret < 0) {
		FUNC0(pod->line6.ifcdev,
			"receive length failed (error %d)\n", ret);
		goto exit;
	}

	pod->firmware_version =
		(init_bytes[0] << 16) | (init_bytes[1] << 8) | (init_bytes[2] << 0);

	for (i = 0; i <= 16; i++) {
		ret = FUNC3(&pod->line6, 0xf000 + 0x08 * i, init_bytes, 8);
		if (ret < 0)
			goto exit;
	}

	ret = FUNC4(usbdev, FUNC6(usbdev, 0),
					USB_REQ_SET_FEATURE,
					USB_TYPE_STANDARD | USB_RECIP_DEVICE | USB_DIR_OUT,
					1, 0,
					NULL, 0, LINE6_TIMEOUT * HZ);
exit:
	FUNC1(init_bytes);
	return ret;
}