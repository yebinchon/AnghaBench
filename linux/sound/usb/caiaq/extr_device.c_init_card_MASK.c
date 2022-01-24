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
typedef  int /*<<< orphan*/  usbpath ;
struct TYPE_4__ {int /*<<< orphan*/  iProduct; int /*<<< orphan*/  iManufacturer; } ;
struct usb_device {TYPE_2__ descriptor; } ;
struct TYPE_3__ {struct snd_card* card; struct usb_device* dev; } ;
struct snd_usb_caiaqdev {char* vendor_name; char* product_name; int /*<<< orphan*/  ep1_in_urb; int /*<<< orphan*/  spec_received; int /*<<< orphan*/  ep1_wait_queue; int /*<<< orphan*/  prepare_wait_queue; int /*<<< orphan*/  midi_out_urb; int /*<<< orphan*/  midi_out_buf; int /*<<< orphan*/  ep1_in_buf; TYPE_1__ chip; } ;
struct snd_card {char* driver; char* shortname; char* mixername; char* id; int /*<<< orphan*/  longname; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 int /*<<< orphan*/  CAIAQ_USB_STR_LEN ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  EP1_BUFSIZE ; 
 int /*<<< orphan*/  EP1_CMD_GET_DEVICE_INFO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HZ ; 
 char* MODNAME ; 
 struct device* FUNC0 (struct snd_usb_caiaqdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_usb_caiaqdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_card*,char*) ; 
 int /*<<< orphan*/  snd_usb_caiaq_midi_output_done ; 
 int FUNC6 (struct snd_usb_caiaqdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  usb_ep1_command_reply_dispatch ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_usb_caiaqdev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*,int) ; 
 scalar_t__ FUNC14 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct snd_usb_caiaqdev *cdev)
{
	char *c, usbpath[32];
	struct usb_device *usb_dev = cdev->chip.dev;
	struct snd_card *card = cdev->chip.card;
	struct device *dev = FUNC0(cdev);
	int err, len;

	if (FUNC14(usb_dev, 0, 1) != 0) {
		FUNC1(dev, "can't set alt interface.\n");
		return -EIO;
	}

	FUNC10(&cdev->ep1_in_urb);
	FUNC10(&cdev->midi_out_urb);

	FUNC9(&cdev->ep1_in_urb, usb_dev,
			  FUNC13(usb_dev, 0x1),
			  cdev->ep1_in_buf, EP1_BUFSIZE,
			  usb_ep1_command_reply_dispatch, cdev);

	FUNC9(&cdev->midi_out_urb, usb_dev,
			  FUNC15(usb_dev, 0x1),
			  cdev->midi_out_buf, EP1_BUFSIZE,
			  snd_usb_caiaq_midi_output_done, cdev);

	/* sanity checks of EPs before actually submitting */
	if (FUNC18(&cdev->ep1_in_urb) ||
	    FUNC18(&cdev->midi_out_urb)) {
		FUNC1(dev, "invalid EPs\n");
		return -EINVAL;
	}

	FUNC2(&cdev->ep1_wait_queue);
	FUNC2(&cdev->prepare_wait_queue);

	if (FUNC17(&cdev->ep1_in_urb, GFP_KERNEL) != 0)
		return -EIO;

	err = FUNC6(cdev, EP1_CMD_GET_DEVICE_INFO, NULL, 0);
	if (err)
		goto err_kill_urb;

	if (!FUNC19(cdev->ep1_wait_queue, cdev->spec_received, HZ)) {
		err = -ENODEV;
		goto err_kill_urb;
	}

	FUNC16(usb_dev, usb_dev->descriptor.iManufacturer,
		   cdev->vendor_name, CAIAQ_USB_STR_LEN);

	FUNC16(usb_dev, usb_dev->descriptor.iProduct,
		   cdev->product_name, CAIAQ_USB_STR_LEN);

	FUNC8(card->driver, MODNAME, sizeof(card->driver));
	FUNC8(card->shortname, cdev->product_name, sizeof(card->shortname));
	FUNC8(card->mixername, cdev->product_name, sizeof(card->mixername));

	/* if the id was not passed as module option, fill it with a shortened
	 * version of the product string which does not contain any
	 * whitespaces */

	if (*card->id == '\0') {
		char id[sizeof(card->id)];

		FUNC3(id, 0, sizeof(id));

		for (c = card->shortname, len = 0;
			*c && len < sizeof(card->id); c++)
			if (*c != ' ')
				id[len++] = *c;

		FUNC5(card, id);
	}

	FUNC12(usb_dev, usbpath, sizeof(usbpath));
	FUNC7(card->longname, sizeof(card->longname), "%s %s (%s)",
		       cdev->vendor_name, cdev->product_name, usbpath);

	FUNC4(cdev);
	return 0;

 err_kill_urb:
	FUNC11(&cdev->ep1_in_urb);
	return err;
}