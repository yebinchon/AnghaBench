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
struct cs35l33_private {int /*<<< orphan*/  regmap; int /*<<< orphan*/  amp_cal; int /*<<< orphan*/  is_tdm_mode; } ;

/* Variables and functions */
 unsigned int CS35L33_AMP_CAL ; 
 int /*<<< orphan*/  CS35L33_CLASSD_CTL ; 
 unsigned int CS35L33_PDN_BST ; 
 unsigned int CS35L33_PDN_TDM ; 
 int /*<<< orphan*/  CS35L33_PWRCTL1 ; 
 int /*<<< orphan*/  CS35L33_PWRCTL2 ; 
#define  SND_SOC_DAPM_POST_PMD 130 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct cs35l33_private* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);
	struct cs35l33_private *priv = FUNC3(component);
	unsigned int val;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		FUNC2(priv->regmap, CS35L33_PWRCTL1,
				    CS35L33_PDN_BST, 0);
		val = priv->is_tdm_mode ? 0 : CS35L33_PDN_TDM;
		FUNC2(priv->regmap, CS35L33_PWRCTL2,
				    CS35L33_PDN_TDM, val);
		FUNC0(component->dev, "BST turned on\n");
		break;
	case SND_SOC_DAPM_POST_PMU:
		FUNC0(component->dev, "SDIN turned on\n");
		if (!priv->amp_cal) {
			FUNC2(priv->regmap, CS35L33_CLASSD_CTL,
				    CS35L33_AMP_CAL, CS35L33_AMP_CAL);
			FUNC0(component->dev, "Amp calibration started\n");
			FUNC5(10000, 11000);
		}
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC2(priv->regmap, CS35L33_PWRCTL2,
				    CS35L33_PDN_TDM, CS35L33_PDN_TDM);
		FUNC5(4000, 4100);
		FUNC2(priv->regmap, CS35L33_PWRCTL1,
				    CS35L33_PDN_BST, CS35L33_PDN_BST);
		FUNC0(component->dev, "BST and SDIN turned off\n");
		break;
	default:
		FUNC1(component->dev, "Invalid event = 0x%x\n", event);

	}

	return 0;
}