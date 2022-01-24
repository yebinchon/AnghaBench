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
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {int /*<<< orphan*/  reg_mutex; } ;

/* Variables and functions */
 unsigned short AC97_EA_SPDIF ; 
 int AC97_EXTENDED_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC2 (struct snd_ac97*,int) ; 
 int FUNC3 (struct snd_ac97*,int,unsigned short,unsigned short) ; 
 struct snd_ac97* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ac97 *ac97 = FUNC4(kcontrol);
	int reg = kcontrol->private_value & 0xff;
	int shift = (kcontrol->private_value >> 8) & 0x0f;
	int mask = (kcontrol->private_value >> 16) & 0xff;
	// int invert = (kcontrol->private_value >> 24) & 0xff;
	unsigned short value, old, new;
	int change;

	value = (ucontrol->value.integer.value[0] & mask);

	FUNC0(&ac97->reg_mutex);
	mask <<= shift;
	value <<= shift;
	old = FUNC2(ac97, reg);
	new = (old & ~mask) | value;
	change = old != new;

	if (change) {
		unsigned short extst = FUNC2(ac97, AC97_EXTENDED_STATUS);
		FUNC3(ac97, AC97_EXTENDED_STATUS, AC97_EA_SPDIF, 0); /* turn off */
		change = FUNC3(ac97, reg, mask, value);
		if (extst & AC97_EA_SPDIF)
			FUNC3(ac97, AC97_EXTENDED_STATUS, AC97_EA_SPDIF, AC97_EA_SPDIF); /* turn on again */
	}
	FUNC1(&ac97->reg_mutex);
	return change;
}