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
struct snd_usb_audio {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,unsigned char*,int) ; 
 int FUNC1 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_mixer_interface *mixer, int val)
{
	struct snd_usb_audio *chip = mixer->chip;
	int err;
	unsigned char buff[3];

	err = FUNC1(chip);
	if (err < 0)
		return err;

	/* Prepare for magic command to toggle clock source */
	err = FUNC0(chip->dev,
				FUNC3(chip->dev, 0), 0x81,
				USB_DIR_IN |
				USB_TYPE_CLASS |
				USB_RECIP_INTERFACE, 0x00, 0x500, buff, 1);
	if (err < 0)
		goto err;
	err = FUNC0(chip->dev,
				FUNC3(chip->dev, 0), 0x81,
				USB_DIR_IN |
				USB_TYPE_CLASS |
				USB_RECIP_ENDPOINT, 0x100, 0x81, buff, 3);
	if (err < 0)
		goto err;

	/* 2 possibilities:	Internal    -> send sample rate
	 *			S/PDIF sync -> send zeroes
	 * NB: Sample rate locked to 48kHz on purpose to
	 *     prevent user from resetting the sample rate
	 *     while S/PDIF sync is enabled and confusing
	 *     this configuration.
	 */
	if (val == 0) {
		buff[0] = 0x80;
		buff[1] = 0xbb;
		buff[2] = 0x00;
	} else {
		buff[0] = buff[1] = buff[2] = 0x00;
	}

	/* Send the magic command to toggle the clock source */
	err = FUNC0(chip->dev,
				FUNC4(chip->dev, 0), 0x1,
				USB_TYPE_CLASS |
				USB_RECIP_ENDPOINT, 0x100, 0x81, buff, 3);
	if (err < 0)
		goto err;
	err = FUNC0(chip->dev,
				FUNC3(chip->dev, 0), 0x81,
				USB_DIR_IN |
				USB_TYPE_CLASS |
				USB_RECIP_ENDPOINT, 0x100, 0x81, buff, 3);
	if (err < 0)
		goto err;
	err = FUNC0(chip->dev,
				FUNC3(chip->dev, 0), 0x81,
				USB_DIR_IN |
				USB_TYPE_CLASS |
				USB_RECIP_ENDPOINT, 0x100, 0x2, buff, 3);
	if (err < 0)
		goto err;

err:
	FUNC2(chip);
	return err;
}