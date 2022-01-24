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
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_emu8000 {unsigned short chorus_mode; unsigned short reverb_mode; int /*<<< orphan*/  control_lock; } ;
struct TYPE_3__ {unsigned short* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 unsigned short SNDRV_EMU8000_CHORUS_NUMBERS ; 
 unsigned short SNDRV_EMU8000_REVERB_NUMBERS ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*) ; 
 struct snd_emu8000* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_emu8000 *emu = FUNC2(kcontrol);
	unsigned long flags;
	int change;
	unsigned short val1;
	
	FUNC3(&emu->control_lock, flags);
	if (kcontrol->private_value) {
		val1 = ucontrol->value.integer.value[0] % SNDRV_EMU8000_CHORUS_NUMBERS;
		change = val1 != emu->chorus_mode;
		emu->chorus_mode = val1;
	} else {
		val1 = ucontrol->value.integer.value[0] % SNDRV_EMU8000_REVERB_NUMBERS;
		change = val1 != emu->reverb_mode;
		emu->reverb_mode = val1;
	}
	FUNC4(&emu->control_lock, flags);
	if (change) {
		if (kcontrol->private_value)
			FUNC0(emu);
		else
			FUNC1(emu);
	}
	return change;
}