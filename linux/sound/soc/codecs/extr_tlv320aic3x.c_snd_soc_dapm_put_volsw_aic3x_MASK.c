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
struct soc_mixer_control {unsigned int reg; unsigned int shift; int max; unsigned int invert; } ;
struct snd_soc_dapm_update {unsigned int reg; unsigned int mask; unsigned short val; struct snd_kcontrol* kcontrol; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*,unsigned int,unsigned int,unsigned short) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,struct snd_kcontrol*,int,struct snd_soc_dapm_update*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC3(kcontrol);
	struct snd_soc_dapm_context *dapm = FUNC1(component);
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	unsigned int reg = mc->reg;
	unsigned int shift = mc->shift;
	int max = mc->max;
	unsigned int mask = (1 << FUNC0(max)) - 1;
	unsigned int invert = mc->invert;
	unsigned short val;
	struct snd_soc_dapm_update update = {};
	int connect, change;

	val = (ucontrol->value.integer.value[0] & mask);

	mask = 0xf;
	if (val)
		val = mask;

	connect = !!val;

	if (invert)
		val = mask - val;

	mask <<= shift;
	val <<= shift;

	change = FUNC2(component, reg, mask, val);
	if (change) {
		update.kcontrol = kcontrol;
		update.reg = reg;
		update.mask = mask;
		update.val = val;

		FUNC4(dapm, kcontrol, connect,
			&update);
	}

	return change;
}