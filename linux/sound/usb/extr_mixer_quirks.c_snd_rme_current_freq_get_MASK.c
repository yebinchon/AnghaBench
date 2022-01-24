#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long u64 ;
typedef  scalar_t__ u32 ;
struct usb_mixer_elem_list {TYPE_3__* mixer; } ;
struct snd_usb_audio {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {unsigned int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {struct snd_usb_audio* chip; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  SND_RME_GET_CURRENT_FREQ ; 
 int /*<<< orphan*/  SND_RME_GET_STATUS1 ; 
 unsigned int FUNC1 (unsigned long long const,scalar_t__) ; 
 struct usb_mixer_elem_list* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_usb_audio*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_usb_audio*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				    struct snd_ctl_elem_value *ucontrol)
{
	struct usb_mixer_elem_list *list = FUNC2(kcontrol);
	struct snd_usb_audio *chip = list->mixer->chip;
	u32 status1;
	const u64 num = 104857600000000ULL;
	u32 den;
	unsigned int freq;
	int err;

	err = FUNC4(chip);
	if (err < 0)
		return err;
	err = FUNC3(chip, SND_RME_GET_STATUS1, &status1);
	if (err < 0)
		goto end;
	err = FUNC3(chip, SND_RME_GET_CURRENT_FREQ, &den);
	if (err < 0)
		goto end;
	freq = (den == 0) ? 0 : FUNC1(num, den);
	freq <<= FUNC0(status1);
	ucontrol->value.integer.value[0] = freq;

end:
	FUNC5(chip);
	return err;
}