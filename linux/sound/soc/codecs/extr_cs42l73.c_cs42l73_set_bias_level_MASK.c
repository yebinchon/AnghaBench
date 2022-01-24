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
struct cs42l73_private {int shutdwn_delay; int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  CS42L73_DMMCC ; 
 int /*<<< orphan*/  CS42L73_MCLKDIS ; 
 int /*<<< orphan*/  CS42L73_PDN ; 
 int /*<<< orphan*/  CS42L73_PWRCTL1 ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 struct cs42l73_private* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component,
				  enum snd_soc_bias_level level)
{
	struct cs42l73_private *cs42l73 = FUNC4(component);

	switch (level) {
	case SND_SOC_BIAS_ON:
		FUNC5(component, CS42L73_DMMCC, CS42L73_MCLKDIS, 0);
		FUNC5(component, CS42L73_PWRCTL1, CS42L73_PDN, 0);
		break;

	case SND_SOC_BIAS_PREPARE:
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC3(component) == SND_SOC_BIAS_OFF) {
			FUNC1(cs42l73->regmap, false);
			FUNC2(cs42l73->regmap);
		}
		FUNC5(component, CS42L73_PWRCTL1, CS42L73_PDN, 1);
		break;

	case SND_SOC_BIAS_OFF:
		FUNC5(component, CS42L73_PWRCTL1, CS42L73_PDN, 1);
		if (cs42l73->shutdwn_delay > 0) {
			FUNC0(cs42l73->shutdwn_delay);
			cs42l73->shutdwn_delay = 0;
		} else {
			FUNC0(15); /* Min amount of time requred to power
				     * down.
				     */
		}
		FUNC5(component, CS42L73_DMMCC, CS42L73_MCLKDIS, 1);
		break;
	}
	return 0;
}