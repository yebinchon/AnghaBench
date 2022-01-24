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
struct cs42l56_private {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS42L56_CLKCTL_1 ; 
 int /*<<< orphan*/  CS42L56_MCLK_DIS_MASK ; 
 int /*<<< orphan*/  CS42L56_PDN_ALL_MASK ; 
 int /*<<< orphan*/  CS42L56_PWRCTL_1 ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_component*) ; 
 struct cs42l56_private* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component,
					enum snd_soc_bias_level level)
{
	struct cs42l56_private *cs42l56 = FUNC7(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;
	case SND_SOC_BIAS_PREPARE:
		FUNC8(component, CS42L56_CLKCTL_1,
				    CS42L56_MCLK_DIS_MASK, 0);
		FUNC8(component, CS42L56_PWRCTL_1,
				    CS42L56_PDN_ALL_MASK, 0);
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC6(component) == SND_SOC_BIAS_OFF) {
			FUNC2(cs42l56->regmap, false);
			FUNC3(cs42l56->regmap);
			ret = FUNC5(FUNC0(cs42l56->supplies),
						    cs42l56->supplies);
			if (ret != 0) {
				FUNC1(cs42l56->dev,
					"Failed to enable regulators: %d\n",
					ret);
				return ret;
			}
		}
		FUNC8(component, CS42L56_PWRCTL_1,
				    CS42L56_PDN_ALL_MASK, 1);
		break;
	case SND_SOC_BIAS_OFF:
		FUNC8(component, CS42L56_PWRCTL_1,
				    CS42L56_PDN_ALL_MASK, 1);
		FUNC8(component, CS42L56_CLKCTL_1,
				    CS42L56_MCLK_DIS_MASK, 1);
		FUNC2(cs42l56->regmap, true);
		FUNC4(FUNC0(cs42l56->supplies),
						    cs42l56->supplies);
		break;
	}

	return 0;
}