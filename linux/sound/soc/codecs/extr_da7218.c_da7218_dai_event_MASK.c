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
typedef  int u8 ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct da7218_priv {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA7218_DAI_CLK_EN_MASK ; 
 int /*<<< orphan*/  DA7218_DAI_CLK_MODE ; 
 int /*<<< orphan*/  DA7218_PC_COUNT ; 
 int DA7218_PC_FREERUN_MASK ; 
 int DA7218_PC_RESYNC_AUTO_MASK ; 
 int /*<<< orphan*/  DA7218_PLL_CTRL ; 
 int DA7218_PLL_MODE_MASK ; 
 int DA7218_PLL_MODE_SRM ; 
 int /*<<< orphan*/  DA7218_PLL_REFOSC_CAL ; 
 int DA7218_PLL_REFOSC_CAL_EN_MASK ; 
 int DA7218_PLL_REFOSC_CAL_START_MASK ; 
 int DA7218_PLL_SRM_STATUS_SRM_LOCK ; 
 int /*<<< orphan*/  DA7218_PLL_STATUS ; 
 int /*<<< orphan*/  DA7218_REF_OSC_CHECK_DELAY_MAX ; 
 int /*<<< orphan*/  DA7218_REF_OSC_CHECK_DELAY_MIN ; 
 int DA7218_REF_OSC_CHECK_TRIES ; 
 int /*<<< orphan*/  DA7218_SRM_CHECK_DELAY ; 
 int DA7218_SRM_CHECK_TRIES ; 
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_POST_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct da7218_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dapm_widget *w,
			    struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC6(w->dapm);
	struct da7218_priv *da7218 = FUNC2(component);
	u8 pll_ctrl, pll_status, refosc_cal;
	int i;
	bool success;

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		if (da7218->master)
			/* Enable DAI clks for master mode */
			FUNC4(component, DA7218_DAI_CLK_MODE,
					    DA7218_DAI_CLK_EN_MASK,
					    DA7218_DAI_CLK_EN_MASK);

		/* Tune reference oscillator */
		FUNC5(component, DA7218_PLL_REFOSC_CAL,
			      DA7218_PLL_REFOSC_CAL_START_MASK);
		FUNC5(component, DA7218_PLL_REFOSC_CAL,
			      DA7218_PLL_REFOSC_CAL_START_MASK |
			      DA7218_PLL_REFOSC_CAL_EN_MASK);

		/* Check tuning complete */
		i = 0;
		success = false;
		do {
			refosc_cal = FUNC3(component, DA7218_PLL_REFOSC_CAL);
			if (!(refosc_cal & DA7218_PLL_REFOSC_CAL_START_MASK)) {
				success = true;
			} else {
				++i;
				FUNC7(DA7218_REF_OSC_CHECK_DELAY_MIN,
					     DA7218_REF_OSC_CHECK_DELAY_MAX);
			}
		} while ((i < DA7218_REF_OSC_CHECK_TRIES) && (!success));

		if (!success)
			FUNC0(component->dev,
				 "Reference oscillator failed calibration\n");

		/* PC synchronised to DAI */
		FUNC5(component, DA7218_PC_COUNT,
			      DA7218_PC_RESYNC_AUTO_MASK);

		/* If SRM not enabled, we don't need to check status */
		pll_ctrl = FUNC3(component, DA7218_PLL_CTRL);
		if ((pll_ctrl & DA7218_PLL_MODE_MASK) != DA7218_PLL_MODE_SRM)
			return 0;

		/* Check SRM has locked */
		i = 0;
		success = false;
		do {
			pll_status = FUNC3(component, DA7218_PLL_STATUS);
			if (pll_status & DA7218_PLL_SRM_STATUS_SRM_LOCK) {
				success = true;
			} else {
				++i;
				FUNC1(DA7218_SRM_CHECK_DELAY);
			}
		} while ((i < DA7218_SRM_CHECK_TRIES) && (!success));

		if (!success)
			FUNC0(component->dev, "SRM failed to lock\n");

		return 0;
	case SND_SOC_DAPM_POST_PMD:
		/* PC free-running */
		FUNC5(component, DA7218_PC_COUNT, DA7218_PC_FREERUN_MASK);

		if (da7218->master)
			/* Disable DAI clks for master mode */
			FUNC4(component, DA7218_DAI_CLK_MODE,
					    DA7218_DAI_CLK_EN_MASK, 0);

		return 0;
	default:
		return -EINVAL;
	}
}