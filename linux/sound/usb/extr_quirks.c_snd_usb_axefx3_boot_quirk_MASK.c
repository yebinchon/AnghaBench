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
struct usb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  USB_RECIP_INTERFACE ; 
 int /*<<< orphan*/  USB_REQ_SET_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct usb_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_device *dev)
{
	int err;

	FUNC0(&dev->dev, "Waiting for Axe-Fx III to boot up...\n");

	if (FUNC2(dev, FUNC5(dev, 0)))
		return -EINVAL;
	/* If the Axe-Fx III has not fully booted, it will timeout when trying
	 * to enable the audio streaming interface. A more generous timeout is
	 * used here to detect when the Axe-Fx III has finished booting as the
	 * set interface message will be acked once it has
	 */
	err = FUNC3(dev, FUNC5(dev, 0),
				USB_REQ_SET_INTERFACE, USB_RECIP_INTERFACE,
				1, 1, NULL, 0, 120000);
	if (err < 0) {
		FUNC1(&dev->dev,
			"failed waiting for Axe-Fx III to boot: %d\n", err);
		return err;
	}

	FUNC0(&dev->dev, "Axe-Fx III is now ready\n");

	err = FUNC4(dev, 1, 0);
	if (err < 0)
		FUNC0(&dev->dev,
			"error stopping Axe-Fx III interface: %d\n", err);

	return 0;
}