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
#define  SND_SOC_DAPM_POST_PMD 131 
#define  SND_SOC_DAPM_POST_PMU 130 
#define  SND_SOC_DAPM_PRE_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int FUNC1 (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ; 
 int FUNC2 (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ; 
 struct arizona* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 
 struct reg_default* wm5102_sysclk_reva_patch ; 
 struct reg_default* wm5102_sysclk_revb_patch ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
			    struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);
	struct arizona *arizona = FUNC3(component->dev->parent);
	struct regmap *regmap = arizona->regmap;
	const struct reg_default *patch = NULL;
	int i, patch_size;

	switch (arizona->rev) {
	case 0:
		patch = wm5102_sysclk_reva_patch;
		patch_size = FUNC0(wm5102_sysclk_reva_patch);
		break;
	default:
		patch = wm5102_sysclk_revb_patch;
		patch_size = FUNC0(wm5102_sysclk_revb_patch);
		break;
	}

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		if (patch)
			for (i = 0; i < patch_size; i++)
				FUNC4(regmap, patch[i].reg,
						   patch[i].def);
		break;
	case SND_SOC_DAPM_PRE_PMD:
		break;
	case SND_SOC_DAPM_PRE_PMU:
	case SND_SOC_DAPM_POST_PMD:
		return FUNC1(w, kcontrol, event);
	default:
		return 0;
	}

	return FUNC2(w, kcontrol, event);
}