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
struct adau {int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU17X1_CLOCK_CONTROL ; 
 int /*<<< orphan*/  ADAU17X1_CLOCK_CONTROL_SYSCLK_EN ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 struct adau* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct adau *adau = FUNC4(component);

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;
	case SND_SOC_BIAS_PREPARE:
		break;
	case SND_SOC_BIAS_STANDBY:
		FUNC0(adau->regmap, false);
		FUNC2(adau->regmap, ADAU17X1_CLOCK_CONTROL,
			ADAU17X1_CLOCK_CONTROL_SYSCLK_EN,
			ADAU17X1_CLOCK_CONTROL_SYSCLK_EN);
		if (FUNC3(component) == SND_SOC_BIAS_OFF)
			FUNC1(adau->regmap);
		break;
	case SND_SOC_BIAS_OFF:
		FUNC2(adau->regmap, ADAU17X1_CLOCK_CONTROL,
			ADAU17X1_CLOCK_CONTROL_SYSCLK_EN, 0);
		FUNC0(adau->regmap, true);
		break;

	}
	return 0;
}