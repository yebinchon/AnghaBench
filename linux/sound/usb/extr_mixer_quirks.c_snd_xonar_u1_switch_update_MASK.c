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
 int USB_DIR_OUT ; 
 int USB_RECIP_OTHER ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC1 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_mixer_interface *mixer,
				      unsigned char status)
{
	struct snd_usb_audio *chip = mixer->chip;
	int err;

	err = FUNC1(chip);
	if (err < 0)
		return err;
	err = FUNC0(chip->dev,
			      FUNC3(chip->dev, 0), 0x08,
			      USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_OTHER,
			      50, 0, &status, 1);
	FUNC2(chip);
	return err;
}