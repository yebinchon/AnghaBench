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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct snd_usb_audio {int /*<<< orphan*/  usb_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct snd_usb_audio* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct usb_device *dev)
{
	struct snd_usb_audio *chip = FUNC1(&dev->dev);

	if (!chip)
		return;
	/*
	 * "Playback Design" products need a 50ms delay after setting the
	 * USB interface.
	 */
	switch (FUNC0(chip->usb_id)) {
	case 0x23ba: /* Playback Design */
	case 0x0644: /* TEAC Corp. */
		FUNC2(50);
		break;
	}
}