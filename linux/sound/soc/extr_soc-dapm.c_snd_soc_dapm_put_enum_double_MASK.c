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
struct soc_enum {unsigned int items; unsigned int shift_l; unsigned int mask; unsigned int shift_r; scalar_t__ reg; } ;
struct snd_soc_dapm_update {scalar_t__ reg; unsigned int mask; unsigned int val; struct snd_kcontrol* kcontrol; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int /*<<< orphan*/  dapm_mutex; struct snd_soc_dapm_update* update; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SND_SOC_DAPM_CLASS_RUNTIME ; 
 scalar_t__ SND_SOC_NOPM ; 
 unsigned int FUNC0 (struct snd_kcontrol*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_soc_dapm_context* FUNC3 (struct snd_kcontrol*) ; 
 unsigned int FUNC4 (struct soc_enum*,unsigned int) ; 
 int FUNC5 (struct snd_soc_card*,struct snd_kcontrol*,unsigned int,struct soc_enum*) ; 
 unsigned int FUNC6 (struct snd_soc_dapm_context*,scalar_t__,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_card*) ; 

int FUNC8(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_dapm_context *dapm = FUNC3(kcontrol);
	struct snd_soc_card *card = dapm->card;
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int *item = ucontrol->value.enumerated.item;
	unsigned int val, change, reg_change = 0;
	unsigned int mask;
	struct snd_soc_dapm_update update = {};
	int ret = 0;

	if (item[0] >= e->items)
		return -EINVAL;

	val = FUNC4(e, item[0]) << e->shift_l;
	mask = e->mask << e->shift_l;
	if (e->shift_l != e->shift_r) {
		if (item[1] > e->items)
			return -EINVAL;
		val |= FUNC4(e, item[1]) << e->shift_r;
		mask |= e->mask << e->shift_r;
	}

	FUNC1(&card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);

	change = FUNC0(kcontrol, val);

	if (e->reg != SND_SOC_NOPM)
		reg_change = FUNC6(dapm, e->reg, mask, val);

	if (change || reg_change) {
		if (reg_change) {
			update.kcontrol = kcontrol;
			update.reg = e->reg;
			update.mask = mask;
			update.val = val;
			card->update = &update;
		}
		change |= reg_change;

		ret = FUNC5(card, kcontrol, item[0], e);

		card->update = NULL;
	}

	FUNC2(&card->dapm_mutex);

	if (ret > 0)
		FUNC7(card);

	return change;
}