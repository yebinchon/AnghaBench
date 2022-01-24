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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cs35l35_private {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS35L35_AMP_DIGSFT_MASK ; 
 int CS35L35_AMP_DIGSFT_SHIFT ; 
 int /*<<< orphan*/  CS35L35_AMP_DIG_VOL_CTL ; 
 int /*<<< orphan*/  CS35L35_CLK_CTL1 ; 
 int /*<<< orphan*/  CS35L35_DISCHG_FILT_MASK ; 
 int CS35L35_DISCHG_FILT_SHIFT ; 
 int /*<<< orphan*/  CS35L35_MCLK_DIS_MASK ; 
 int CS35L35_MCLK_DIS_SHIFT ; 
 int /*<<< orphan*/  CS35L35_PDN_ALL_MASK ; 
 int /*<<< orphan*/  CS35L35_PWRCTL1 ; 
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int FUNC0 (struct cs35l35_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cs35l35_private* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);
	struct cs35l35_private *cs35l35 = FUNC3(component);
	int ret = 0;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		FUNC2(cs35l35->regmap, CS35L35_CLK_CTL1,
					CS35L35_MCLK_DIS_MASK,
					0 << CS35L35_MCLK_DIS_SHIFT);
		FUNC2(cs35l35->regmap, CS35L35_PWRCTL1,
					CS35L35_DISCHG_FILT_MASK,
					0 << CS35L35_DISCHG_FILT_SHIFT);
		FUNC2(cs35l35->regmap, CS35L35_PWRCTL1,
					CS35L35_PDN_ALL_MASK, 0);
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC2(cs35l35->regmap, CS35L35_PWRCTL1,
					CS35L35_DISCHG_FILT_MASK,
					1 << CS35L35_DISCHG_FILT_SHIFT);
		FUNC2(cs35l35->regmap, CS35L35_PWRCTL1,
					  CS35L35_PDN_ALL_MASK, 1);

		/* Already muted, so disable volume ramp for faster shutdown */
		FUNC2(cs35l35->regmap, CS35L35_AMP_DIG_VOL_CTL,
				   CS35L35_AMP_DIGSFT_MASK, 0);

		ret = FUNC0(cs35l35);

		FUNC2(cs35l35->regmap, CS35L35_CLK_CTL1,
					CS35L35_MCLK_DIS_MASK,
					1 << CS35L35_MCLK_DIS_SHIFT);

		FUNC2(cs35l35->regmap, CS35L35_AMP_DIG_VOL_CTL,
				   CS35L35_AMP_DIGSFT_MASK,
				   1 << CS35L35_AMP_DIGSFT_SHIFT);
		break;
	default:
		FUNC1(component->dev, "Invalid event = 0x%x\n", event);
		ret = -EINVAL;
	}
	return ret;
}