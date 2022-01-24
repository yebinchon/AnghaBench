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
typedef  int /*<<< orphan*/  u32 ;
struct usb_interface {struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;
struct snd_usb_audio_quirk {int ifnum; scalar_t__ shares_media_device; } ;
struct snd_usb_audio {size_t index; int /*<<< orphan*/  card; int /*<<< orphan*/  num_interfaces; int /*<<< orphan*/  active; scalar_t__ txfr_quirk; struct usb_host_interface* ctrl_intf; struct usb_interface* pm_intf; int /*<<< orphan*/  shutdown; struct usb_device* dev; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENXIO ; 
 int QUIRK_NO_INTERFACE ; 
 int SNDRV_CARDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct snd_usb_audio*) ; 
 scalar_t__* enable ; 
 scalar_t__ FUNC9 (struct usb_device*,int /*<<< orphan*/ *) ; 
 struct snd_usb_audio_quirk* FUNC10 (struct usb_device*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (struct usb_host_interface*) ; 
 int /*<<< orphan*/  ignore_ctl_error ; 
 struct usb_device* FUNC12 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int* pid ; 
 int /*<<< orphan*/  register_mutex ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct snd_usb_audio*,struct usb_interface*) ; 
 int FUNC19 (struct usb_device*,struct usb_interface*,struct snd_usb_audio_quirk const*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct usb_interface*,struct usb_device*,int,struct snd_usb_audio_quirk const*,int /*<<< orphan*/ ,struct snd_usb_audio**) ; 
 int FUNC21 (struct snd_usb_audio*,int,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct snd_usb_audio*,struct usb_interface*,int /*<<< orphan*/ *,struct snd_usb_audio_quirk const*) ; 
 int FUNC23 (struct snd_usb_audio*,int) ; 
 int /*<<< orphan*/  usb_audio_driver ; 
 struct snd_usb_audio** usb_chip ; 
 int /*<<< orphan*/  FUNC24 (struct usb_interface*,struct snd_usb_audio*) ; 
 int* vid ; 

__attribute__((used)) static int FUNC25(struct usb_interface *intf,
			   const struct usb_device_id *usb_id)
{
	struct usb_device *dev = FUNC12(intf);
	const struct snd_usb_audio_quirk *quirk =
		(const struct snd_usb_audio_quirk *)usb_id->driver_info;
	struct snd_usb_audio *chip;
	int i, err;
	struct usb_host_interface *alts;
	int ifnum;
	u32 id;

	alts = &intf->altsetting[0];
	ifnum = FUNC11(alts)->bInterfaceNumber;
	id = FUNC0(FUNC13(dev->descriptor.idVendor),
		    FUNC13(dev->descriptor.idProduct));
	if (FUNC9(dev, &id))
		quirk = FUNC10(dev, id);
	if (quirk && quirk->ifnum >= 0 && ifnum != quirk->ifnum)
		return -ENXIO;

	err = FUNC19(dev, intf, quirk, id);
	if (err < 0)
		return err;

	/*
	 * found a config.  now register to ALSA
	 */

	/* check whether it's already registered */
	chip = NULL;
	FUNC14(&register_mutex);
	for (i = 0; i < SNDRV_CARDS; i++) {
		if (usb_chip[i] && usb_chip[i]->dev == dev) {
			if (FUNC5(&usb_chip[i]->shutdown)) {
				FUNC6(&dev->dev, "USB device is in the shutdown state, cannot create a card instance\n");
				err = -EIO;
				goto __error;
			}
			chip = usb_chip[i];
			FUNC4(&chip->active); /* avoid autopm */
			break;
		}
	}
	if (! chip) {
		/* it's a fresh one.
		 * now look for an empty slot and create a new card instance
		 */
		for (i = 0; i < SNDRV_CARDS; i++)
			if (!usb_chip[i] &&
			    (vid[i] == -1 || vid[i] == FUNC2(id)) &&
			    (pid[i] == -1 || pid[i] == FUNC1(id))) {
				if (enable[i]) {
					err = FUNC20(intf, dev, i, quirk,
								   id, &chip);
					if (err < 0)
						goto __error;
					chip->pm_intf = intf;
					break;
				} else if (vid[i] != -1 || pid[i] != -1) {
					FUNC7(&dev->dev,
						 "device (%04x:%04x) is disabled\n",
						 FUNC2(id),
						 FUNC1(id));
					err = -ENOENT;
					goto __error;
				}
			}
		if (!chip) {
			FUNC6(&dev->dev, "no available usb audio device\n");
			err = -ENODEV;
			goto __error;
		}
	}
	FUNC8(&dev->dev, chip);

	/*
	 * For devices with more than one control interface, we assume the
	 * first contains the audio controls. We might need a more specific
	 * check here in the future.
	 */
	if (!chip->ctrl_intf)
		chip->ctrl_intf = alts;

	chip->txfr_quirk = 0;
	err = 1; /* continue */
	if (quirk && quirk->ifnum != QUIRK_NO_INTERFACE) {
		/* need some special handlings */
		err = FUNC22(chip, intf, &usb_audio_driver, quirk);
		if (err < 0)
			goto __error;
	}

	if (err > 0) {
		/* create normal USB audio interfaces */
		err = FUNC23(chip, ifnum);
		if (err < 0)
			goto __error;
		err = FUNC21(chip, ifnum, ignore_ctl_error);
		if (err < 0)
			goto __error;
	}

	/* we are allowed to call snd_card_register() many times */
	err = FUNC17(chip->card);
	if (err < 0)
		goto __error;

	if (quirk && quirk->shares_media_device) {
		/* don't want to fail when snd_media_device_create() fails */
		FUNC18(chip, intf);
	}

	usb_chip[chip->index] = chip;
	chip->num_interfaces++;
	FUNC24(intf, chip);
	FUNC3(&chip->active);
	FUNC15(&register_mutex);
	return 0;

 __error:
	if (chip) {
		/* chip->active is inside the chip->card object,
		 * decrement before memory is possibly returned.
		 */
		FUNC3(&chip->active);
		if (!chip->num_interfaces)
			FUNC16(chip->card);
	}
	FUNC15(&register_mutex);
	return err;
}