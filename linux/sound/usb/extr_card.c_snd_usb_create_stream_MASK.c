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
struct usb_interface_descriptor {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; } ;
struct usb_interface {struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct snd_usb_audio {int /*<<< orphan*/  usb_id; int /*<<< orphan*/  midi_list; int /*<<< orphan*/  card; struct usb_device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ USB_CLASS_AUDIO ; 
 scalar_t__ USB_CLASS_VENDOR_SPEC ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ USB_SPEED_LOW ; 
 scalar_t__ USB_SUBCLASS_AUDIOSTREAMING ; 
 scalar_t__ USB_SUBCLASS_MIDISTREAMING ; 
 scalar_t__ USB_SUBCLASS_VENDOR_SPEC ; 
 int FUNC1 (int /*<<< orphan*/ ,struct usb_interface*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct usb_interface_descriptor* FUNC4 (struct usb_host_interface*) ; 
 scalar_t__ FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_usb_audio*,int) ; 
 int /*<<< orphan*/  usb_audio_driver ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct usb_interface*,void*) ; 
 struct usb_interface* FUNC8 (struct usb_device*,int) ; 
 scalar_t__ FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct snd_usb_audio *chip, int ctrlif, int interface)
{
	struct usb_device *dev = chip->dev;
	struct usb_host_interface *alts;
	struct usb_interface_descriptor *altsd;
	struct usb_interface *iface = FUNC8(dev, interface);

	if (!iface) {
		FUNC3(&dev->dev, "%u:%d : does not exist\n",
			ctrlif, interface);
		return -EINVAL;
	}

	alts = &iface->altsetting[0];
	altsd = FUNC4(alts);

	/*
	 * Android with both accessory and audio interfaces enabled gets the
	 * interface numbers wrong.
	 */
	if ((chip->usb_id == FUNC0(0x18d1, 0x2d04) ||
	     chip->usb_id == FUNC0(0x18d1, 0x2d05)) &&
	    interface == 0 &&
	    altsd->bInterfaceClass == USB_CLASS_VENDOR_SPEC &&
	    altsd->bInterfaceSubClass == USB_SUBCLASS_VENDOR_SPEC) {
		interface = 2;
		iface = FUNC8(dev, interface);
		if (!iface)
			return -EINVAL;
		alts = &iface->altsetting[0];
		altsd = FUNC4(alts);
	}

	if (FUNC9(iface)) {
		FUNC2(&dev->dev, "%d:%d: skipping, already claimed\n",
			ctrlif, interface);
		return -EINVAL;
	}

	if ((altsd->bInterfaceClass == USB_CLASS_AUDIO ||
	     altsd->bInterfaceClass == USB_CLASS_VENDOR_SPEC) &&
	    altsd->bInterfaceSubClass == USB_SUBCLASS_MIDISTREAMING) {
		int err = FUNC1(chip->card, iface,
					     &chip->midi_list, NULL,
					     chip->usb_id);
		if (err < 0) {
			FUNC3(&dev->dev,
				"%u:%d: cannot create sequencer device\n",
				ctrlif, interface);
			return -EINVAL;
		}
		FUNC7(&usb_audio_driver, iface, (void *)-1L);

		return 0;
	}

	if ((altsd->bInterfaceClass != USB_CLASS_AUDIO &&
	     altsd->bInterfaceClass != USB_CLASS_VENDOR_SPEC) ||
	    altsd->bInterfaceSubClass != USB_SUBCLASS_AUDIOSTREAMING) {
		FUNC2(&dev->dev,
			"%u:%d: skipping non-supported interface %d\n",
			ctrlif, interface, altsd->bInterfaceClass);
		/* skip non-supported classes */
		return -EINVAL;
	}

	if (FUNC5(dev) == USB_SPEED_LOW) {
		FUNC3(&dev->dev, "low speed audio streaming not supported\n");
		return -EINVAL;
	}

	if (! FUNC6(chip, interface)) {
		FUNC10(dev, interface, 0); /* reset the current interface */
		FUNC7(&usb_audio_driver, iface, (void *)-1L);
	}

	return 0;
}