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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  extern_boost; } ;
struct cs35l36_private {int /*<<< orphan*/  regmap; TYPE_1__ pdata; } ;

/* Variables and functions */
 int CS35L36_BST_DIS_VP ; 
 int CS35L36_BST_EN ; 
 int /*<<< orphan*/  CS35L36_BST_EN_MASK ; 
 int CS35L36_BST_EN_SHIFT ; 
 int /*<<< orphan*/  CS35L36_PWR_CTRL2 ; 
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_POST_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cs35l36_private* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
			       struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component =
			FUNC3(w->dapm);
	struct cs35l36_private *cs35l36 =
			FUNC2(component);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		if (!cs35l36->pdata.extern_boost)
			FUNC1(cs35l36->regmap, CS35L36_PWR_CTRL2,
					   CS35L36_BST_EN_MASK,
					   CS35L36_BST_EN <<
					   CS35L36_BST_EN_SHIFT);
		break;
	case SND_SOC_DAPM_POST_PMD:
		if (!cs35l36->pdata.extern_boost)
			FUNC1(cs35l36->regmap, CS35L36_PWR_CTRL2,
					   CS35L36_BST_EN_MASK,
					   CS35L36_BST_DIS_VP <<
					   CS35L36_BST_EN_SHIFT);
		break;
	default:
		FUNC0(component->dev, "Invalid event = 0x%x\n", event);
		return -EINVAL;
	}

	return 0;
}