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
struct cs35l34_private {int /*<<< orphan*/  regmap; int /*<<< orphan*/  tdm_mode; } ;

/* Variables and functions */
 int CS35L34_PDN_ALL ; 
 int CS35L34_PDN_TDM ; 
 int /*<<< orphan*/  CS35L34_PWRCTL1 ; 
 int /*<<< orphan*/  CS35L34_PWRCTL3 ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct cs35l34_private* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);
	struct cs35l34_private *priv = FUNC3(component);
	int ret;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		if (priv->tdm_mode)
			FUNC2(priv->regmap, CS35L34_PWRCTL3,
						CS35L34_PDN_TDM, 0x00);

		ret = FUNC2(priv->regmap, CS35L34_PWRCTL1,
						CS35L34_PDN_ALL, 0);
		if (ret < 0) {
			FUNC0(component->dev, "Cannot set Power bits %d\n", ret);
			return ret;
		}
		FUNC5(5000, 5100);
	break;
	case SND_SOC_DAPM_POST_PMD:
		if (priv->tdm_mode) {
			FUNC2(priv->regmap, CS35L34_PWRCTL3,
					CS35L34_PDN_TDM, CS35L34_PDN_TDM);
		}
		ret = FUNC2(priv->regmap, CS35L34_PWRCTL1,
					CS35L34_PDN_ALL, CS35L34_PDN_ALL);
	break;
	default:
		FUNC1("Invalid event = 0x%x\n", event);
	}
	return 0;
}