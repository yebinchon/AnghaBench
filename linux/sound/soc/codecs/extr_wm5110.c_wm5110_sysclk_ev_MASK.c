#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {int dummy; } ;
struct regmap {int dummy; } ;
struct reg_default {int /*<<< orphan*/  def; int /*<<< orphan*/  reg; } ;
struct arizona {int rev; struct regmap* regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int FUNC0 (struct reg_default*) ; 
#define  SND_SOC_DAPM_POST_PMD 130 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int FUNC1 (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ; 
 struct arizona* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 
 struct reg_default* wm5110_sysclk_revd_patch ; 
 struct reg_default* wm5110_sysclk_reve_patch ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
			    struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);
	struct arizona *arizona = FUNC2(component->dev->parent);
	struct regmap *regmap = arizona->regmap;
	const struct reg_default *patch = NULL;
	int i, patch_size;

	switch (arizona->rev) {
	case 3:
		patch = wm5110_sysclk_revd_patch;
		patch_size = FUNC0(wm5110_sysclk_revd_patch);
		break;
	default:
		patch = wm5110_sysclk_reve_patch;
		patch_size = FUNC0(wm5110_sysclk_reve_patch);
		break;
	}

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		if (patch)
			for (i = 0; i < patch_size; i++)
				FUNC3(regmap, patch[i].reg,
						   patch[i].def);
		break;
	case SND_SOC_DAPM_PRE_PMU:
	case SND_SOC_DAPM_POST_PMD:
		return FUNC1(w, kcontrol, event);
	default:
		break;
	}

	return 0;
}