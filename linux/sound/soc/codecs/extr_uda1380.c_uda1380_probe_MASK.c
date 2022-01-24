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
struct uda1380_priv {int /*<<< orphan*/  work; struct snd_soc_component* component; } ;
struct uda1380_platform_data {int dac_clk; int /*<<< orphan*/  gpio_power; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct TYPE_2__ {struct uda1380_platform_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R00_DAC_CLK ; 
 int /*<<< orphan*/  UDA1380_CLK ; 
#define  UDA1380_DAC_CLK_SYSCLK 129 
#define  UDA1380_DAC_CLK_WSPLL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct uda1380_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  uda1380_flush_work ; 
 int FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct uda1380_platform_data *pdata =component->dev->platform_data;
	struct uda1380_priv *uda1380 = FUNC2(component);
	int ret;

	uda1380->component = component;

	if (!FUNC1(pdata->gpio_power)) {
		ret = FUNC3(component);
		if (ret)
			return ret;
	}

	FUNC0(&uda1380->work, uda1380_flush_work);

	/* set clock input */
	switch (pdata->dac_clk) {
	case UDA1380_DAC_CLK_SYSCLK:
		FUNC4(component, UDA1380_CLK, 0);
		break;
	case UDA1380_DAC_CLK_WSPLL:
		FUNC4(component, UDA1380_CLK,
			R00_DAC_CLK);
		break;
	}

	return 0;
}