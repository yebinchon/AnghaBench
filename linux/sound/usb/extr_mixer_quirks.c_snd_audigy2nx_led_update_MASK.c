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
struct usb_mixer_interface {struct snd_usb_audio* chip; } ;
struct snd_usb_audio {scalar_t__ usb_id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int USB_DIR_OUT ; 
 scalar_t__ FUNC0 (int,int) ; 
 int USB_RECIP_OTHER ; 
 int USB_TYPE_VENDOR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_mixer_interface *mixer,
				    int value, int index)
{
	struct snd_usb_audio *chip = mixer->chip;
	int err;

	err = FUNC2(chip);
	if (err < 0)
		return err;

	if (chip->usb_id == FUNC0(0x041e, 0x3042))
		err = FUNC1(chip->dev,
			      FUNC4(chip->dev, 0), 0x24,
			      USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
			      !value, 0, NULL, 0);
	/* USB X-Fi S51 Pro */
	if (chip->usb_id == FUNC0(0x041e, 0x30df))
		err = FUNC1(chip->dev,
			      FUNC4(chip->dev, 0), 0x24,
			      USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
			      !value, 0, NULL, 0);
	else
		err = FUNC1(chip->dev,
			      FUNC4(chip->dev, 0), 0x24,
			      USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
			      value, index + 2, NULL, 0);
	FUNC3(chip);
	return err;
}