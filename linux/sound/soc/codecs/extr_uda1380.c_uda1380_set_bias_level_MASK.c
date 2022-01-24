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
struct uda1380_platform_data {int /*<<< orphan*/  gpio_power; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_2__ {struct uda1380_platform_data* platform_data; } ;

/* Variables and functions */
 int R02_PON_BIAS ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int UDA1380_CACHEREGNUM ; 
 int UDA1380_MVOL ; 
 int /*<<< orphan*/  UDA1380_PM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  uda1380_cache_dirty ; 
 int FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component,
	enum snd_soc_bias_level level)
{
	int pm = FUNC5(component, UDA1380_PM);
	int reg;
	struct uda1380_platform_data *pdata = component->dev->platform_data;

	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
		/* ADC, DAC on */
		FUNC8(component, UDA1380_PM, R02_PON_BIAS | pm);
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC4(component) == SND_SOC_BIAS_OFF) {
			if (FUNC0(pdata->gpio_power)) {
				FUNC1(pdata->gpio_power, 1);
				FUNC2(1);
				FUNC6(component);
			}

			FUNC7(component);
		}
		FUNC8(component, UDA1380_PM, 0x0);
		break;
	case SND_SOC_BIAS_OFF:
		if (!FUNC0(pdata->gpio_power))
			break;

		FUNC1(pdata->gpio_power, 0);

		/* Mark mixer regs cache dirty to sync them with
		 * codec regs on power on.
		 */
		for (reg = UDA1380_MVOL; reg < UDA1380_CACHEREGNUM; reg++)
			FUNC3(reg - 0x10, &uda1380_cache_dirty);
	}
	return 0;
}