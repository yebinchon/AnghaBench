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
struct snd_soc_dapm_widget {TYPE_1__* dapm; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP3_PANDORA_DAC_POWER_GPIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  omap3pandora_dac_reg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *k, int event)
{
	int ret;

	/*
	 * The PCM1773 DAC datasheet requires 1ms delay between switching
	 * VCC power on/off and /PD pin high/low
	 */
	if (FUNC0(event)) {
		ret = FUNC5(omap3pandora_dac_reg);
		if (ret) {
			FUNC1(w->dapm->dev, "Failed to power DAC: %d\n", ret);
			return ret;
		}
		FUNC3(1);
		FUNC2(OMAP3_PANDORA_DAC_POWER_GPIO, 1);
	} else {
		FUNC2(OMAP3_PANDORA_DAC_POWER_GPIO, 0);
		FUNC3(1);
		FUNC4(omap3pandora_dac_reg);
	}

	return 0;
}