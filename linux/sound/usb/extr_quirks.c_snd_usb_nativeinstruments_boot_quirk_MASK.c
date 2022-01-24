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
struct usb_device {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 scalar_t__ FUNC0 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_device *dev)
{
	int ret;

	if (FUNC0(dev, FUNC3(dev, 0)))
		return -EINVAL;
	ret = FUNC1(dev, FUNC3(dev, 0),
				  0xaf, USB_TYPE_VENDOR | USB_RECIP_DEVICE,
				  1, 0, NULL, 0, 1000);

	if (ret < 0)
		return ret;

	FUNC2(dev);

	/* return -EAGAIN, so the creation of an audio interface for this
	 * temporary device is aborted. The device will reconnect with a
	 * new product ID */
	return -EAGAIN;
}