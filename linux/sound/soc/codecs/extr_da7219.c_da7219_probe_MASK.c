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
struct da7219_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/ * mclk; scalar_t__ pdata; int /*<<< orphan*/  regmap; int /*<<< orphan*/  pll_lock; int /*<<< orphan*/  ctrl_lock; struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DA7219_ADC_L_CTRL ; 
 int /*<<< orphan*/  DA7219_ADC_L_RAMP_EN_MASK ; 
 int /*<<< orphan*/  DA7219_BEEP_CYCLES_MASK ; 
 unsigned int DA7219_CHIP_MINOR_MASK ; 
 int /*<<< orphan*/  DA7219_CHIP_REVISION ; 
 int /*<<< orphan*/  DA7219_DAC_L_CTRL ; 
 int /*<<< orphan*/  DA7219_DAC_L_RAMP_EN_MASK ; 
 int /*<<< orphan*/  DA7219_DAC_R_CTRL ; 
 int /*<<< orphan*/  DA7219_DAC_R_RAMP_EN_MASK ; 
 int /*<<< orphan*/  DA7219_HP_L_AMP_MIN_GAIN_EN_MASK ; 
 int /*<<< orphan*/  DA7219_HP_L_AMP_RAMP_EN_MASK ; 
 int /*<<< orphan*/  DA7219_HP_L_CTRL ; 
 int /*<<< orphan*/  DA7219_HP_R_AMP_MIN_GAIN_EN_MASK ; 
 int /*<<< orphan*/  DA7219_HP_R_AMP_RAMP_EN_MASK ; 
 int /*<<< orphan*/  DA7219_HP_R_CTRL ; 
 int /*<<< orphan*/  DA7219_MIXIN_L_AMP_RAMP_EN_MASK ; 
 int /*<<< orphan*/  DA7219_MIXIN_L_CTRL ; 
 int /*<<< orphan*/  DA7219_NUM_SUPPLIES ; 
 int /*<<< orphan*/  DA7219_PC_COUNT ; 
 int /*<<< orphan*/  DA7219_PC_FREERUN_MASK ; 
 int /*<<< orphan*/  DA7219_TONE_GEN_CYCLES ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 scalar_t__ FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  da7219_rev_aa_patch ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct da7219_priv* FUNC15 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct snd_soc_component *component)
{
	struct da7219_priv *da7219 = FUNC15(component);
	unsigned int rev;
	int ret;

	da7219->component = component;
	FUNC11(&da7219->ctrl_lock);
	FUNC11(&da7219->pll_lock);

	/* Regulator configuration */
	ret = FUNC6(component);
	if (ret)
		return ret;

	ret = FUNC12(da7219->regmap, DA7219_CHIP_REVISION, &rev);
	if (ret) {
		FUNC8(component->dev, "Failed to read chip revision: %d\n", ret);
		goto err_disable_reg;
	}

	switch (rev & DA7219_CHIP_MINOR_MASK) {
	case 0:
		ret = FUNC13(da7219->regmap, da7219_rev_aa_patch,
					    FUNC0(da7219_rev_aa_patch));
		if (ret) {
			FUNC8(component->dev, "Failed to register AA patch: %d\n",
				ret);
			goto err_disable_reg;
		}
		break;
	default:
		break;
	}

	/* Handle DT/ACPI/Platform data */
	da7219->pdata = FUNC9(component->dev);
	if (!da7219->pdata)
		da7219->pdata = FUNC4(component);

	FUNC5(component);

	/* Check if MCLK provided */
	da7219->mclk = FUNC10(component->dev, "mclk");
	if (FUNC1(da7219->mclk)) {
		if (FUNC2(da7219->mclk) != -ENOENT) {
			ret = FUNC2(da7219->mclk);
			goto err_disable_reg;
		} else {
			da7219->mclk = NULL;
		}
	}

	/* Register CCF DAI clock control */
	ret = FUNC7(component);
	if (ret)
		return ret;

	/* Default PC counter to free-running */
	FUNC16(component, DA7219_PC_COUNT, DA7219_PC_FREERUN_MASK,
			    DA7219_PC_FREERUN_MASK);

	/* Default gain ramping */
	FUNC16(component, DA7219_MIXIN_L_CTRL,
			    DA7219_MIXIN_L_AMP_RAMP_EN_MASK,
			    DA7219_MIXIN_L_AMP_RAMP_EN_MASK);
	FUNC16(component, DA7219_ADC_L_CTRL, DA7219_ADC_L_RAMP_EN_MASK,
			    DA7219_ADC_L_RAMP_EN_MASK);
	FUNC16(component, DA7219_DAC_L_CTRL, DA7219_DAC_L_RAMP_EN_MASK,
			    DA7219_DAC_L_RAMP_EN_MASK);
	FUNC16(component, DA7219_DAC_R_CTRL, DA7219_DAC_R_RAMP_EN_MASK,
			    DA7219_DAC_R_RAMP_EN_MASK);
	FUNC16(component, DA7219_HP_L_CTRL,
			    DA7219_HP_L_AMP_RAMP_EN_MASK,
			    DA7219_HP_L_AMP_RAMP_EN_MASK);
	FUNC16(component, DA7219_HP_R_CTRL,
			    DA7219_HP_R_AMP_RAMP_EN_MASK,
			    DA7219_HP_R_AMP_RAMP_EN_MASK);

	/* Default minimum gain on HP to avoid pops during DAPM sequencing */
	FUNC16(component, DA7219_HP_L_CTRL,
			    DA7219_HP_L_AMP_MIN_GAIN_EN_MASK,
			    DA7219_HP_L_AMP_MIN_GAIN_EN_MASK);
	FUNC16(component, DA7219_HP_R_CTRL,
			    DA7219_HP_R_AMP_MIN_GAIN_EN_MASK,
			    DA7219_HP_R_AMP_MIN_GAIN_EN_MASK);

	/* Default infinite tone gen, start/stop by Kcontrol */
	FUNC17(component, DA7219_TONE_GEN_CYCLES, DA7219_BEEP_CYCLES_MASK);

	/* Initialise AAD block */
	ret = FUNC3(component);
	if (ret)
		goto err_disable_reg;

	return 0;

err_disable_reg:
	FUNC14(DA7219_NUM_SUPPLIES, da7219->supplies);

	return ret;
}