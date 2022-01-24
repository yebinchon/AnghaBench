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
struct max9860_priv {int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  MAX9860_PWRMAN ; 
 int /*<<< orphan*/  MAX9860_SHDN ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct max9860_priv* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component,
				  enum snd_soc_bias_level level)
{
	struct max9860_priv *max9860 = FUNC1(component->dev);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
		break;

	case SND_SOC_BIAS_STANDBY:
		ret = FUNC2(max9860->regmap, MAX9860_PWRMAN,
					 MAX9860_SHDN, MAX9860_SHDN);
		if (ret) {
			FUNC0(component->dev, "Failed to remove SHDN: %d\n",
				ret);
			return ret;
		}
		break;

	case SND_SOC_BIAS_OFF:
		ret = FUNC2(max9860->regmap, MAX9860_PWRMAN,
					 MAX9860_SHDN, 0);
		if (ret) {
			FUNC0(component->dev, "Failed to request SHDN: %d\n",
				ret);
			return ret;
		}
		break;
	}

	return 0;
}