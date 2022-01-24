#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_line6 {int /*<<< orphan*/  ifcdev; struct usb_device* usbdev; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int LINE6_READ_WRITE_MAX_RETRIES ; 
 int /*<<< orphan*/  LINE6_READ_WRITE_STATUS_DELAY ; 
 int LINE6_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC7(struct usb_line6 *line6, unsigned address, void *data,
		     unsigned datalen)
{
	struct usb_device *usbdev = line6->usbdev;
	int ret;
	unsigned char *status;
	int count;

	if (address > 0xffff || datalen > 0xffff)
		return -EINVAL;

	status = FUNC2(1, GFP_KERNEL);
	if (!status)
		return -ENOMEM;

	ret = FUNC4(usbdev, FUNC6(usbdev, 0), 0x67,
			      USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
			      0x0022, address, data, datalen,
			      LINE6_TIMEOUT * HZ);

	if (ret < 0) {
		FUNC0(line6->ifcdev,
			"write request failed (error %d)\n", ret);
		goto exit;
	}

	for (count = 0; count < LINE6_READ_WRITE_MAX_RETRIES; count++) {
		FUNC3(LINE6_READ_WRITE_STATUS_DELAY);

		ret = FUNC4(usbdev, FUNC5(usbdev, 0),
				      0x67,
				      USB_TYPE_VENDOR | USB_RECIP_DEVICE |
				      USB_DIR_IN,
				      0x0012, 0x0000,
				      status, 1, LINE6_TIMEOUT * HZ);

		if (ret < 0) {
			FUNC0(line6->ifcdev,
				"receiving status failed (error %d)\n", ret);
			goto exit;
		}

		if (*status != 0xff)
			break;
	}

	if (*status == 0xff) {
		FUNC0(line6->ifcdev, "write failed after %d retries\n",
			count);
		ret = -EIO;
	} else if (*status != 0) {
		FUNC0(line6->ifcdev, "write failed (error %d)\n", ret);
		ret = -EIO;
	}
exit:
	FUNC1(status);
	return ret;
}