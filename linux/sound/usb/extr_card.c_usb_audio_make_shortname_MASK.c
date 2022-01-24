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
struct TYPE_2__ {int /*<<< orphan*/  iProduct; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct snd_usb_audio_quirk {scalar_t__* product_name; } ;
struct snd_usb_audio {int /*<<< orphan*/  usb_id; struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/  shortname; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC5 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct usb_device *dev,
				     struct snd_usb_audio *chip,
				     const struct snd_usb_audio_quirk *quirk)
{
	struct snd_card *card = chip->card;

	if (quirk && quirk->product_name && *quirk->product_name) {
		FUNC4(card->shortname, quirk->product_name,
			sizeof(card->shortname));
		return;
	}

	/* retrieve the device string as shortname */
	if (!dev->descriptor.iProduct ||
	    FUNC5(dev, dev->descriptor.iProduct,
		       card->shortname, sizeof(card->shortname)) <= 0) {
		/* no name available from anywhere, so use ID */
		FUNC2(card->shortname, "USB Device %#04x:%#04x",
			FUNC1(chip->usb_id),
			FUNC0(chip->usb_id));
	}

	FUNC3(card->shortname);
}