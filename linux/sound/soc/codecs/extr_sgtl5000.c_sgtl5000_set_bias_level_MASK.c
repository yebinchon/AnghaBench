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
struct sgtl5000_priv {int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  SGTL5000_CHIP_ANA_POWER ; 
 int /*<<< orphan*/  SGTL5000_REFTOP_POWERUP ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct sgtl5000_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component,
				   enum snd_soc_bias_level level)
{
	struct sgtl5000_priv *sgtl = FUNC2(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
	case SND_SOC_BIAS_STANDBY:
		FUNC0(sgtl->regmap, false);
		ret = FUNC1(sgtl->regmap);
		if (ret) {
			FUNC0(sgtl->regmap, true);
			return ret;
		}

		FUNC3(component, SGTL5000_CHIP_ANA_POWER,
				    SGTL5000_REFTOP_POWERUP,
				    SGTL5000_REFTOP_POWERUP);
		break;
	case SND_SOC_BIAS_OFF:
		FUNC0(sgtl->regmap, true);
		FUNC3(component, SGTL5000_CHIP_ANA_POWER,
				    SGTL5000_REFTOP_POWERUP, 0);
		break;
	}

	return 0;
}