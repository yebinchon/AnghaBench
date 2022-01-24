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
typedef  int /*<<< orphan*/  u32 ;
struct usb_mixer_elem_list {TYPE_1__* mixer; } ;
struct snd_usb_audio {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {struct snd_usb_audio* chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_RME_GET_STATUS1 ; 
 struct usb_mixer_elem_list* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct snd_usb_audio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_usb_audio*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
			       u32 *status1)
{
	struct usb_mixer_elem_list *list = FUNC0(kcontrol);
	struct snd_usb_audio *chip = list->mixer->chip;
	int err;

	err = FUNC2(chip);
	if (err < 0)
		return err;
	err = FUNC1(chip, SND_RME_GET_STATUS1, status1);
	FUNC3(chip);
	return err;
}