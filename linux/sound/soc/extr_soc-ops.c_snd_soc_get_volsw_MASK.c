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
struct soc_mixer_control {unsigned int reg; unsigned int rreg; unsigned int shift; unsigned int rshift; int max; int min; int sign_bit; unsigned int invert; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_soc_component*,unsigned int,unsigned int,unsigned int,int,int*) ; 
 scalar_t__ FUNC4 (struct soc_mixer_control*) ; 

int FUNC5(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC2(kcontrol);
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	unsigned int reg = mc->reg;
	unsigned int reg2 = mc->rreg;
	unsigned int shift = mc->shift;
	unsigned int rshift = mc->rshift;
	int max = mc->max;
	int min = mc->min;
	int sign_bit = mc->sign_bit;
	unsigned int mask = (1 << FUNC1(max)) - 1;
	unsigned int invert = mc->invert;
	int val;
	int ret;

	if (sign_bit)
		mask = FUNC0(sign_bit + 1) - 1;

	ret = FUNC3(component, reg, mask, shift, sign_bit, &val);
	if (ret)
		return ret;

	ucontrol->value.integer.value[0] = val - min;
	if (invert)
		ucontrol->value.integer.value[0] =
			max - ucontrol->value.integer.value[0];

	if (FUNC4(mc)) {
		if (reg == reg2)
			ret = FUNC3(component, reg, mask, rshift,
				sign_bit, &val);
		else
			ret = FUNC3(component, reg2, mask, shift,
				sign_bit, &val);
		if (ret)
			return ret;

		ucontrol->value.integer.value[1] = val - min;
		if (invert)
			ucontrol->value.integer.value[1] =
				max - ucontrol->value.integer.value[1];
	}

	return 0;
}