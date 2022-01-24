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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct max98095_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/  mclk; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M98095_090_PWR_EN_IN ; 
 int /*<<< orphan*/  M98095_MBEN ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_component*) ; 
 struct max98095_priv* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component,
				   enum snd_soc_bias_level level)
{
	struct max98095_priv *max98095 = FUNC7(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/*
		 * SND_SOC_BIAS_PREPARE is called while preparing for a
		 * transition to ON or away from ON. If current bias_level
		 * is SND_SOC_BIAS_ON, then it is preparing for a transition
		 * away from ON. Disable the clock in that case, otherwise
		 * enable it.
		 */
		if (FUNC0(max98095->mclk))
			break;

		if (FUNC6(component) == SND_SOC_BIAS_ON) {
			FUNC1(max98095->mclk);
		} else {
			ret = FUNC2(max98095->mclk);
			if (ret)
				return ret;
		}
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC6(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC5(max98095->regmap);

			if (ret != 0) {
				FUNC3(component->dev, "Failed to sync cache: %d\n", ret);
				return ret;
			}
		}

		FUNC8(component, M98095_090_PWR_EN_IN,
				M98095_MBEN, M98095_MBEN);
		break;

	case SND_SOC_BIAS_OFF:
		FUNC8(component, M98095_090_PWR_EN_IN,
				M98095_MBEN, 0);
		FUNC4(max98095->regmap);
		break;
	}
	return 0;
}