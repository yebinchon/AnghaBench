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
struct cs35l33_private {int amp_cal; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS35L33_AMP_CAL ; 
 int /*<<< orphan*/  CS35L33_CLASSD_CTL ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_POST_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs35l33_private* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);
	struct cs35l33_private *priv = FUNC3(component);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		if (!priv->amp_cal) {
			FUNC5(8000, 9000);
			priv->amp_cal = true;
			FUNC2(priv->regmap, CS35L33_CLASSD_CTL,
				    CS35L33_AMP_CAL, 0);
			FUNC0(component->dev, "Amp calibration done\n");
		}
		FUNC0(component->dev, "Amp turned on\n");
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC0(component->dev, "Amp turned off\n");
		break;
	default:
		FUNC1(component->dev, "Invalid event = 0x%x\n", event);
		break;
	}

	return 0;
}