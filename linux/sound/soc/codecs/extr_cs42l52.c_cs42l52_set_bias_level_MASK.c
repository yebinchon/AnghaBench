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
struct cs42l52_private {int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  CS42L52_PWRCTL1 ; 
 int /*<<< orphan*/  CS42L52_PWRCTL1_PDN_ALL ; 
 int /*<<< orphan*/  CS42L52_PWRCTL1_PDN_CODEC ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*) ; 
 struct cs42l52_private* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component,
					enum snd_soc_bias_level level)
{
	struct cs42l52_private *cs42l52 = FUNC3(component);

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;
	case SND_SOC_BIAS_PREPARE:
		FUNC4(component, CS42L52_PWRCTL1,
				    CS42L52_PWRCTL1_PDN_CODEC, 0);
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC2(component) == SND_SOC_BIAS_OFF) {
			FUNC0(cs42l52->regmap, false);
			FUNC1(cs42l52->regmap);
		}
		FUNC5(component, CS42L52_PWRCTL1, CS42L52_PWRCTL1_PDN_ALL);
		break;
	case SND_SOC_BIAS_OFF:
		FUNC5(component, CS42L52_PWRCTL1, CS42L52_PWRCTL1_PDN_ALL);
		FUNC0(cs42l52->regmap, true);
		break;
	}

	return 0;
}