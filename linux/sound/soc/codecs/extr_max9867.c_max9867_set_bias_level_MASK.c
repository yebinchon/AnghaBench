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
struct max9867_priv {int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  MAX9867_PWRMAN ; 
 int /*<<< orphan*/  MAX9867_SHTDOWN ; 
#define  SND_SOC_BIAS_OFF 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 struct max9867_priv* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component,
				  enum snd_soc_bias_level level)
{
	int err;
	struct max9867_priv *max9867 = FUNC4(component);

	switch (level) {
	case SND_SOC_BIAS_STANDBY:
		if (FUNC3(component) == SND_SOC_BIAS_OFF) {
			err = FUNC1(max9867->regmap);
			if (err)
				return err;

			err = FUNC2(max9867->regmap, MAX9867_PWRMAN,
						 MAX9867_SHTDOWN, MAX9867_SHTDOWN);
			if (err)
				return err;
		}
		break;
	case SND_SOC_BIAS_OFF:
		err = FUNC2(max9867->regmap, MAX9867_PWRMAN,
					 MAX9867_SHTDOWN, 0);
		if (err)
			return err;

		FUNC0(max9867->regmap);
		break;
	default:
		break;
	}

	return 0;
}