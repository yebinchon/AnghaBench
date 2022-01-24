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
struct usb_interface {int dummy; } ;
struct usb_host_config {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; struct usb_host_config* actconfig; int /*<<< orphan*/  descriptor; } ;
struct TYPE_2__ {int /*<<< orphan*/  wTotalLength; } ;

/* Variables and functions */
 int ENODEV ; 
 int EXTIGY_FIRMWARE_SIZE_NEW ; 
 int EXTIGY_FIRMWARE_SIZE_OLD ; 
 int /*<<< orphan*/  USB_DT_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__* FUNC1 (struct usb_host_config*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_device *dev, struct usb_interface *intf)
{
	struct usb_host_config *config = dev->actconfig;
	int err;

	if (FUNC2(FUNC1(config)->wTotalLength) == EXTIGY_FIRMWARE_SIZE_OLD ||
	    FUNC2(FUNC1(config)->wTotalLength) == EXTIGY_FIRMWARE_SIZE_NEW) {
		FUNC0(&dev->dev, "sending Extigy boot sequence...\n");
		/* Send message to force it to reconnect with full interface. */
		err = FUNC3(dev, FUNC6(dev,0),
				      0x10, 0x43, 0x0001, 0x000a, NULL, 0);
		if (err < 0)
			FUNC0(&dev->dev, "error sending boot message: %d\n", err);
		err = FUNC4(dev, USB_DT_DEVICE, 0,
				&dev->descriptor, sizeof(dev->descriptor));
		config = dev->actconfig;
		if (err < 0)
			FUNC0(&dev->dev, "error usb_get_descriptor: %d\n", err);
		err = FUNC5(dev);
		if (err < 0)
			FUNC0(&dev->dev, "error usb_reset_configuration: %d\n", err);
		FUNC0(&dev->dev, "extigy_boot: new boot length = %d\n",
			    FUNC2(FUNC1(config)->wTotalLength));
		return -ENODEV; /* quit this anyway */
	}
	return 0;
}