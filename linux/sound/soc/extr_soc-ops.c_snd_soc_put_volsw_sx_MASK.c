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
struct soc_mixer_control {unsigned int reg; unsigned int rreg; unsigned int shift; unsigned int rshift; int max; int min; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct snd_soc_component* FUNC1 (struct snd_kcontrol*) ; 
 int FUNC2 (struct snd_soc_component*,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (struct soc_mixer_control*) ; 

int FUNC4(struct snd_kcontrol *kcontrol,
			 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC1(kcontrol);
	struct soc_mixer_control *mc =
	    (struct soc_mixer_control *)kcontrol->private_value;

	unsigned int reg = mc->reg;
	unsigned int reg2 = mc->rreg;
	unsigned int shift = mc->shift;
	unsigned int rshift = mc->rshift;
	int max = mc->max;
	int min = mc->min;
	unsigned int mask = (1U << (FUNC0(min + max) - 1)) - 1;
	int err = 0;
	unsigned int val, val_mask, val2 = 0;

	val_mask = mask << shift;
	val = (ucontrol->value.integer.value[0] + min) & mask;
	val = val << shift;

	err = FUNC2(component, reg, val_mask, val);
	if (err < 0)
		return err;

	if (FUNC3(mc)) {
		val_mask = mask << rshift;
		val2 = (ucontrol->value.integer.value[1] + min) & mask;
		val2 = val2 << rshift;

		err = FUNC2(component, reg2, val_mask,
			val2);
	}
	return err;
}