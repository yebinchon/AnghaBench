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
 int /*<<< orphan*/  UAC_SET_CUR ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,unsigned char*,int) ; 
 int FUNC1 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_mixer_interface *mixer,
					int value)
{
	struct snd_usb_audio *chip = mixer->chip;
	int err;
	unsigned char buf[2];

	err = FUNC1(chip);
	if (err < 0)
		return err;

	buf[0] = 0x01;
	buf[1] = value ? 0x02 : 0x01;
	err = FUNC0(chip->dev,
		      FUNC3(chip->dev, 0), UAC_SET_CUR,
		      USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
		      0x0400, 0x0e00, buf, 2);
	FUNC2(chip);
	return err;
}