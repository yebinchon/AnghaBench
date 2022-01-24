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
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,unsigned char*,int) ; 
 int FUNC1 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_mixer_interface *mixer,
					     unsigned char state)
{
	struct snd_usb_audio *chip = mixer->chip;
	int err;
	unsigned char buff[2];

	buff[0] = 0x02;
	buff[1] = state ? 0x02 : 0x00;

	err = FUNC1(chip);
	if (err < 0)
		return err;
	err = FUNC0(chip->dev,
			FUNC3(chip->dev, 0), HID_REQ_SET_REPORT,
			USB_TYPE_CLASS | USB_RECIP_INTERFACE | USB_DIR_OUT,
			0x0202, 3, buff, 2);
	FUNC2(chip);
	return err;
}