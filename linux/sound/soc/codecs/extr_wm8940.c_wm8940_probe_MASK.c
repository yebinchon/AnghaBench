#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct wm8940_setup_data {int vroi; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct TYPE_3__ {struct wm8940_setup_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  WM8940_OUTPUTCTL ; 
 int /*<<< orphan*/  WM8940_POWER1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct wm8940_setup_data *pdata = component->dev->platform_data;
	int ret;
	u16 reg;

	ret = FUNC5(component);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to issue reset\n");
		return ret;
	}

	FUNC2(component, SND_SOC_BIAS_STANDBY);

	ret = FUNC4(component, WM8940_POWER1, 0x180);
	if (ret < 0)
		return ret;

	if (!pdata)
		FUNC1(component->dev, "No platform data supplied\n");
	else {
		reg = FUNC3(component, WM8940_OUTPUTCTL);
		ret = FUNC4(component, WM8940_OUTPUTCTL, reg | pdata->vroi);
		if (ret < 0)
			return ret;
	}

	return ret;
}