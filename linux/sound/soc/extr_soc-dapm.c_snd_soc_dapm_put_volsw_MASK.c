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
struct soc_mixer_control {int reg; unsigned int shift; int max; unsigned int invert; unsigned int rshift; int rreg; } ;
struct snd_soc_dapm_update {int has_second_set; int reg2; unsigned int mask2; unsigned int val2; int reg; unsigned int mask; unsigned int val; struct snd_kcontrol* kcontrol; } ;
struct snd_soc_dapm_context {int /*<<< orphan*/  dev; struct snd_soc_card* card; } ;
struct snd_soc_card {int /*<<< orphan*/  dapm_mutex; struct snd_soc_dapm_update* update; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct snd_kcontrol {TYPE_3__ id; scalar_t__ private_value; } ;
struct TYPE_4__ {unsigned int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_DAPM_CLASS_RUNTIME ; 
 int SND_SOC_NOPM ; 
 int FUNC0 (struct snd_kcontrol*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct snd_soc_dapm_context* FUNC5 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC6 (struct soc_mixer_control*) ; 
 int FUNC7 (struct snd_soc_card*,struct snd_kcontrol*,int,int) ; 
 int FUNC8 (struct snd_soc_dapm_context*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_card*) ; 

int FUNC10(struct snd_kcontrol *kcontrol,
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
	unsigned int mask = (1 << width) - 1;
	unsigned int invert = mc->invert;
	unsigned int val, rval = 0;
	int connect, rconnect = -1, change, reg_change = 0;
	struct snd_soc_dapm_update update = {};
	int ret = 0;

	val = (ucontrol->value.integer.value[0] & mask);
	connect = !!val;

	if (invert)
		val = max - val;

	if (FUNC6(mc)) {
		rval = (ucontrol->value.integer.value[1] & mask);
		rconnect = !!rval;
		if (invert)
			rval = max - rval;
	}

	FUNC3(&card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);

	/* This assumes field width < (bits in unsigned int / 2) */
	if (width > sizeof(unsigned int) * 8 / 2)
		FUNC1(dapm->dev,
			 "ASoC: control %s field width limit exceeded\n",
			 kcontrol->id.name);
	change = FUNC0(kcontrol, val | (rval << width));

	if (reg != SND_SOC_NOPM) {
		val = val << shift;
		rval = rval << mc->rshift;

		reg_change = FUNC8(dapm, reg, mask << shift, val);

		if (FUNC6(mc))
			reg_change |= FUNC8(dapm, mc->rreg,
							 mask << mc->rshift,
							 rval);
	}

	if (change || reg_change) {
		if (reg_change) {
			if (FUNC6(mc)) {
				update.has_second_set = true;
				update.reg2 = mc->rreg;
				update.mask2 = mask << mc->rshift;
				update.val2 = rval;
			}
			update.kcontrol = kcontrol;
			update.reg = reg;
			update.mask = mask << shift;
			update.val = val;
			card->update = &update;
		}
		change |= reg_change;

		ret = FUNC7(card, kcontrol, connect,
						  rconnect);

		card->update = NULL;
	}

	FUNC4(&card->dapm_mutex);

	if (ret > 0)
		FUNC9(card);

	return change;
}