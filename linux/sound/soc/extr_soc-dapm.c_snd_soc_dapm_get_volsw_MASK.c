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
struct soc_mixer_control {int reg; unsigned int shift; int max; unsigned int invert; int rreg; unsigned int rshift; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int /*<<< orphan*/  dapm_mutex; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_DAPM_CLASS_RUNTIME ; 
 int SND_SOC_NOPM ; 
 unsigned int FUNC0 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC1 (struct snd_kcontrol*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct snd_soc_dapm_context* FUNC5 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC6 (struct soc_mixer_control*) ; 
 int FUNC7 (struct snd_soc_dapm_context*,int,unsigned int*) ; 

int FUNC8(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_dapm_context *dapm = FUNC5(kcontrol);
	struct snd_soc_card *card = dapm->card;
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	int reg = mc->reg;
	unsigned int shift = mc->shift;
	int max = mc->max;
	unsigned int width = FUNC2(max);
	unsigned int mask = (1 << FUNC2(max)) - 1;
	unsigned int invert = mc->invert;
	unsigned int reg_val, val, rval = 0;
	int ret = 0;

	FUNC3(&card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);
	if (FUNC1(kcontrol) && reg != SND_SOC_NOPM) {
		ret = FUNC7(dapm, reg, &reg_val);
		val = (reg_val >> shift) & mask;

		if (ret == 0 && reg != mc->rreg)
			ret = FUNC7(dapm, mc->rreg, &reg_val);

		if (FUNC6(mc))
			rval = (reg_val >> mc->rshift) & mask;
	} else {
		reg_val = FUNC0(kcontrol);
		val = reg_val & mask;

		if (FUNC6(mc))
			rval = (reg_val >> width) & mask;
	}
	FUNC4(&card->dapm_mutex);

	if (ret)
		return ret;

	if (invert)
		ucontrol->value.integer.value[0] = max - val;
	else
		ucontrol->value.integer.value[0] = val;

	if (FUNC6(mc)) {
		if (invert)
			ucontrol->value.integer.value[1] = max - rval;
		else
			ucontrol->value.integer.value[1] = rval;
	}

	return ret;
}