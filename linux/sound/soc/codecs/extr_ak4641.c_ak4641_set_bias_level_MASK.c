#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {TYPE_1__* dev; } ;
struct ak4641_priv {int /*<<< orphan*/  regmap; } ;
struct ak4641_platform_data {int /*<<< orphan*/  gpio_power; int /*<<< orphan*/  gpio_npdn; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_2__ {struct ak4641_platform_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK4641_DAC ; 
 int /*<<< orphan*/  AK4641_PM1 ; 
 int /*<<< orphan*/  AK4641_PM2 ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_component*) ; 
 struct ak4641_priv* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component,
	enum snd_soc_bias_level level)
{
	struct ak4641_priv *ak4641 = FUNC7(component);
	struct ak4641_platform_data *pdata = component->dev->platform_data;
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		/* unmute */
		FUNC8(component, AK4641_DAC, 0x20, 0);
		break;
	case SND_SOC_BIAS_PREPARE:
		/* mute */
		FUNC8(component, AK4641_DAC, 0x20, 0x20);
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC6(component) == SND_SOC_BIAS_OFF) {
			if (pdata && FUNC1(pdata->gpio_power))
				FUNC2(pdata->gpio_power, 1);
			FUNC3(1);
			if (pdata && FUNC1(pdata->gpio_npdn))
				FUNC2(pdata->gpio_npdn, 1);
			FUNC3(1);

			ret = FUNC5(ak4641->regmap);
			if (ret) {
				FUNC0(component->dev,
					"Failed to sync cache: %d\n", ret);
				return ret;
			}
		}
		FUNC8(component, AK4641_PM1, 0x80, 0x80);
		FUNC8(component, AK4641_PM2, 0x80, 0);
		break;
	case SND_SOC_BIAS_OFF:
		FUNC8(component, AK4641_PM1, 0x80, 0);
		if (pdata && FUNC1(pdata->gpio_npdn))
			FUNC2(pdata->gpio_npdn, 0);
		if (pdata && FUNC1(pdata->gpio_power))
			FUNC2(pdata->gpio_power, 0);
		FUNC4(ak4641->regmap);
		break;
	}
	return 0;
}