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
struct soc_enum {scalar_t__ reg; unsigned int shift_l; unsigned int mask; unsigned int shift_r; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int /*<<< orphan*/  dapm_mutex; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_DAPM_CLASS_RUNTIME ; 
 scalar_t__ SND_SOC_NOPM ; 
 unsigned int FUNC0 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct snd_soc_dapm_context* FUNC4 (struct snd_kcontrol*) ; 
 void* FUNC5 (struct soc_enum*,unsigned int) ; 
 int FUNC6 (struct snd_soc_dapm_context*,scalar_t__,unsigned int*) ; 

int FUNC7(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_dapm_context *dapm = FUNC4(kcontrol);
	struct snd_soc_card *card = dapm->card;
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int reg_val, val;

	FUNC2(&card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);
	if (e->reg != SND_SOC_NOPM && FUNC1(kcontrol)) {
		int ret = FUNC6(dapm, e->reg, &reg_val);
		if (ret) {
			FUNC3(&card->dapm_mutex);
			return ret;
		}
	} else {
		reg_val = FUNC0(kcontrol);
	}
	FUNC3(&card->dapm_mutex);

	val = (reg_val >> e->shift_l) & e->mask;
	ucontrol->value.enumerated.item[0] = FUNC5(e, val);
	if (e->shift_l != e->shift_r) {
		val = (reg_val >> e->shift_r) & e->mask;
		val = FUNC5(e, val);
		ucontrol->value.enumerated.item[1] = val;
	}

	return 0;
}