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
struct TYPE_2__ {scalar_t__ iManufacturer; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct snd_usb_audio_quirk {scalar_t__* vendor_name; scalar_t__* profile_name; } ;
struct snd_usb_audio {struct snd_card* card; } ;
struct snd_card {char* shortname; scalar_t__* longname; } ;

/* Variables and functions */
#define  USB_SPEED_FULL 132 
#define  USB_SPEED_HIGH 131 
#define  USB_SPEED_LOW 130 
#define  USB_SPEED_SUPER 129 
#define  USB_SPEED_SUPER_PLUS 128 
 int FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int FUNC2 (scalar_t__*,char*,int) ; 
 int FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,scalar_t__*,int) ; 
 int FUNC5 (struct usb_device*,scalar_t__,scalar_t__*,int) ; 

__attribute__((used)) static void FUNC6(struct usb_device *dev,
				    struct snd_usb_audio *chip,
				    const struct snd_usb_audio_quirk *quirk)
{
	struct snd_card *card = chip->card;
	int len;

	/* shortcut - if any pre-defined string is given, use it */
	if (quirk && quirk->profile_name && *quirk->profile_name) {
		FUNC3(card->longname, quirk->profile_name,
			sizeof(card->longname));
		return;
	}

	if (quirk && quirk->vendor_name && *quirk->vendor_name) {
		len = FUNC3(card->longname, quirk->vendor_name, sizeof(card->longname));
	} else {
		/* retrieve the vendor and device strings as longname */
		if (dev->descriptor.iManufacturer)
			len = FUNC5(dev, dev->descriptor.iManufacturer,
					 card->longname, sizeof(card->longname));
		else
			len = 0;
		/* we don't really care if there isn't any vendor string */
	}
	if (len > 0) {
		FUNC1(card->longname);
		if (*card->longname)
			FUNC2(card->longname, " ", sizeof(card->longname));
	}

	FUNC2(card->longname, card->shortname, sizeof(card->longname));

	len = FUNC2(card->longname, " at ", sizeof(card->longname));

	if (len < sizeof(card->longname))
		FUNC4(dev, card->longname + len, sizeof(card->longname) - len);

	switch (FUNC0(dev)) {
	case USB_SPEED_LOW:
		FUNC2(card->longname, ", low speed", sizeof(card->longname));
		break;
	case USB_SPEED_FULL:
		FUNC2(card->longname, ", full speed", sizeof(card->longname));
		break;
	case USB_SPEED_HIGH:
		FUNC2(card->longname, ", high speed", sizeof(card->longname));
		break;
	case USB_SPEED_SUPER:
		FUNC2(card->longname, ", super speed", sizeof(card->longname));
		break;
	case USB_SPEED_SUPER_PLUS:
		FUNC2(card->longname, ", super speed plus", sizeof(card->longname));
		break;
	default:
		break;
	}
}