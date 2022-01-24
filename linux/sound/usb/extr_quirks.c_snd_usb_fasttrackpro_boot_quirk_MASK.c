#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int /*<<< orphan*/  dev; TYPE_2__* actconfig; } ;
struct TYPE_3__ {int bConfigurationValue; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC3(struct usb_device *dev)
{
	int err;

	if (dev->actconfig->desc.bConfigurationValue == 1) {
		FUNC1(&dev->dev,
			   "Fast Track Pro switching to config #2\n");
		/* This function has to be available by the usb core module.
		 * if it is not avialable the boot quirk has to be left out
		 * and the configuration has to be set by udev or hotplug
		 * rules
		 */
		err = FUNC2(dev, 2);
		if (err < 0)
			FUNC0(&dev->dev,
				"error usb_driver_set_configuration: %d\n",
				err);
		/* Always return an error, so that we stop creating a device
		   that will just be destroyed and recreated with a new
		   configuration */
		return -ENODEV;
	} else
		FUNC1(&dev->dev, "Fast Track Pro config OK\n");

	return 0;
}