#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cs35l36_private {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS35L36_AMP_MUTE_MASK ; 
 int CS35L36_AMP_MUTE_SHIFT ; 
 int /*<<< orphan*/  CS35L36_AMP_OUT_MUTE ; 
 int /*<<< orphan*/  CS35L36_ASP_RX1_SEL ; 
 int /*<<< orphan*/  CS35L36_GLOBAL_EN_MASK ; 
 int CS35L36_GLOBAL_EN_SHIFT ; 
 int /*<<< orphan*/  CS35L36_INT4_RAW_STATUS ; 
 int /*<<< orphan*/  CS35L36_PCM_RX_SEL_MASK ; 
 int CS35L36_PCM_RX_SEL_PCM ; 
 int CS35L36_PCM_RX_SEL_ZERO ; 
 int CS35L36_PLL_UNLOCK_MASK ; 
 int /*<<< orphan*/  CS35L36_PWR_CTRL1 ; 
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMD 130 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cs35l36_private* FUNC5 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dapm_widget *w,
				  struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component =
			FUNC6(w->dapm);
	struct cs35l36_private *cs35l36 =
			FUNC5(component);
	u32 reg;

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		FUNC4(cs35l36->regmap, CS35L36_PWR_CTRL1,
				   CS35L36_GLOBAL_EN_MASK,
				   1 << CS35L36_GLOBAL_EN_SHIFT);

		FUNC7(2000, 2100);

		FUNC3(cs35l36->regmap, CS35L36_INT4_RAW_STATUS, &reg);

		if (FUNC0(reg & CS35L36_PLL_UNLOCK_MASK))
			FUNC1(cs35l36->dev, "PLL Unlocked\n");

		FUNC4(cs35l36->regmap, CS35L36_ASP_RX1_SEL,
				   CS35L36_PCM_RX_SEL_MASK,
				   CS35L36_PCM_RX_SEL_PCM);
		FUNC4(cs35l36->regmap, CS35L36_AMP_OUT_MUTE,
				   CS35L36_AMP_MUTE_MASK,
				   0 << CS35L36_AMP_MUTE_SHIFT);
		break;
	case SND_SOC_DAPM_PRE_PMD:
		FUNC4(cs35l36->regmap, CS35L36_ASP_RX1_SEL,
				   CS35L36_PCM_RX_SEL_MASK,
				   CS35L36_PCM_RX_SEL_ZERO);
		FUNC4(cs35l36->regmap, CS35L36_AMP_OUT_MUTE,
				   CS35L36_AMP_MUTE_MASK,
				   1 << CS35L36_AMP_MUTE_SHIFT);
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC4(cs35l36->regmap, CS35L36_PWR_CTRL1,
				   CS35L36_GLOBAL_EN_MASK,
				   0 << CS35L36_GLOBAL_EN_SHIFT);

		FUNC7(2000, 2100);
		break;
	default:
		FUNC2(component->dev, "Invalid event = 0x%x\n", event);
		return -EINVAL;
	}

	return 0;
}