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
struct snd_soc_component {int dummy; } ;
struct rt5514_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/  i2c_regmap; int /*<<< orphan*/  dsp_enabled; int /*<<< orphan*/  mclk; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  SND_SOC_BIAS_ON ; 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt5514_i2c_patch ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*) ; 
 struct rt5514_priv* FUNC8 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component,
			enum snd_soc_bias_level level)
{
	struct rt5514_priv *rt5514 = FUNC8(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_PREPARE:
		if (FUNC1(rt5514->mclk))
			break;

		if (FUNC7(component) == SND_SOC_BIAS_ON) {
			FUNC2(rt5514->mclk);
		} else {
			ret = FUNC3(rt5514->mclk);
			if (ret)
				return ret;
		}
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC7(component) == SND_SOC_BIAS_OFF) {
			/*
			 * If the DSP is enabled in start of recording, the DSP
			 * should be disabled, and sync back to normal recording
			 * settings to make sure recording properly.
			 */
			if (rt5514->dsp_enabled) {
				rt5514->dsp_enabled = 0;
				FUNC6(rt5514->i2c_regmap,
					rt5514_i2c_patch,
					FUNC0(rt5514_i2c_patch));
				FUNC4(rt5514->regmap);
				FUNC5(rt5514->regmap);
			}
		}
		break;

	default:
		break;
	}

	return 0;
}