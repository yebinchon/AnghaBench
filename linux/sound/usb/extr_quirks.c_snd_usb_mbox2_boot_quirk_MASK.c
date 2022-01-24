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
struct usb_host_config {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; struct usb_host_config* actconfig; int /*<<< orphan*/  descriptor; } ;
struct TYPE_2__ {int /*<<< orphan*/  wTotalLength; } ;

/* Variables and functions */
 int ENODEV ; 
 int MBOX2_BOOT_LOADING ; 
 int MBOX2_BOOT_READY ; 
 int MBOX2_FIRMWARE_SIZE ; 
 int /*<<< orphan*/  USB_DT_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC3 (struct usb_host_config*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int,int**,int) ; 
 int FUNC8 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct usb_device*) ; 

__attribute__((used)) static int FUNC11(struct usb_device *dev)
{
	struct usb_host_config *config = dev->actconfig;
	int err;
	u8 bootresponse[0x12];
	int fwsize;
	int count;

	fwsize = FUNC4(FUNC3(config)->wTotalLength);

	if (fwsize != MBOX2_FIRMWARE_SIZE) {
		FUNC1(&dev->dev, "Invalid firmware size=%d.\n", fwsize);
		return -ENODEV;
	}

	FUNC0(&dev->dev, "Sending Digidesign Mbox 2 boot sequence...\n");

	count = 0;
	bootresponse[0] = MBOX2_BOOT_LOADING;
	while ((bootresponse[0] == MBOX2_BOOT_LOADING) && (count < 10)) {
		FUNC6(500); /* 0.5 second delay */
		FUNC7(dev, FUNC9(dev, 0),
			/* Control magic - load onboard firmware */
			0x85, 0xc0, 0x0001, 0x0000, &bootresponse, 0x0012);
		if (bootresponse[0] == MBOX2_BOOT_READY)
			break;
		FUNC0(&dev->dev, "device not ready, resending boot sequence...\n");
		count++;
	}

	if (bootresponse[0] != MBOX2_BOOT_READY) {
		FUNC1(&dev->dev, "Unknown bootresponse=%d, or timed out, ignoring device.\n", bootresponse[0]);
		return -ENODEV;
	}

	FUNC0(&dev->dev, "device initialised!\n");

	err = FUNC8(dev, USB_DT_DEVICE, 0,
		&dev->descriptor, sizeof(dev->descriptor));
	config = dev->actconfig;
	if (err < 0)
		FUNC0(&dev->dev, "error usb_get_descriptor: %d\n", err);

	err = FUNC10(dev);
	if (err < 0)
		FUNC0(&dev->dev, "error usb_reset_configuration: %d\n", err);
	FUNC0(&dev->dev, "mbox2_boot: new boot length = %d\n",
		FUNC4(FUNC3(config)->wTotalLength));

	FUNC5(dev);

	FUNC2(&dev->dev, "Digidesign Mbox 2: 24bit 48kHz");

	return 0; /* Successful boot */
}