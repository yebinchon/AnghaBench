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
struct soc_mixer_control {unsigned int reg; unsigned int shift; int /*<<< orphan*/  invert; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 struct snd_soc_component* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct snd_soc_component*,unsigned int,unsigned int*) ; 

int FUNC2(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC0(kcontrol);
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	unsigned int reg = mc->reg;
	unsigned int shift = mc->shift;
	unsigned int mask = 1 << shift;
	unsigned int invert = mc->invert != 0;
	unsigned int val;
	int ret;

	ret = FUNC1(component, reg, &val);
	if (ret)
		return ret;

	val &= mask;

	if (shift != 0 && val != 0)
		val = val >> shift;
	ucontrol->value.enumerated.item[0] = val ^ invert;

	return 0;
}