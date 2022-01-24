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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct da7213_priv {int alc_calib_auto; int /*<<< orphan*/ * mclk; struct da7213_platform_data* pdata; } ;
struct da7213_platform_data {int micbias1_lvl; int micbias2_lvl; int dmic_data_sel; int dmic_samplephase; int dmic_clk_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA7213_ADC_L_CTRL ; 
 int /*<<< orphan*/  DA7213_ADC_R_CTRL ; 
 int DA7213_ALC_CALIB_MODE_MAN ; 
 int /*<<< orphan*/  DA7213_ALC_CTRL1 ; 
 int /*<<< orphan*/  DA7213_AUX_L_CTRL ; 
 int /*<<< orphan*/  DA7213_AUX_R_CTRL ; 
 int /*<<< orphan*/  DA7213_DAC_L_CTRL ; 
 int /*<<< orphan*/  DA7213_DAC_R_CTRL ; 
#define  DA7213_DMIC_CLK_1_5MHZ 137 
#define  DA7213_DMIC_CLK_3_0MHZ 136 
 int DA7213_DMIC_CLK_RATE_MASK ; 
 int DA7213_DMIC_CLK_RATE_SHIFT ; 
#define  DA7213_DMIC_DATA_LFALL_RRISE 135 
#define  DA7213_DMIC_DATA_LRISE_RFALL 134 
 int DA7213_DMIC_DATA_SEL_MASK ; 
 int DA7213_DMIC_DATA_SEL_SHIFT ; 
 int DA7213_DMIC_SAMPLEPHASE_MASK ; 
 int DA7213_DMIC_SAMPLEPHASE_SHIFT ; 
#define  DA7213_DMIC_SAMPLE_BETWEEN_CLKEDGE 133 
#define  DA7213_DMIC_SAMPLE_ON_CLKEDGE 132 
 int DA7213_GAIN_RAMP_EN ; 
 int DA7213_HP_AMP_OE ; 
 int /*<<< orphan*/  DA7213_HP_L_CTRL ; 
 int /*<<< orphan*/  DA7213_HP_R_CTRL ; 
 int DA7213_LINE_AMP_OE ; 
 int /*<<< orphan*/  DA7213_LINE_CTRL ; 
 int DA7213_MICBIAS1_LEVEL_MASK ; 
 int DA7213_MICBIAS1_LEVEL_SHIFT ; 
 int DA7213_MICBIAS2_LEVEL_MASK ; 
 int DA7213_MICBIAS2_LEVEL_SHIFT ; 
#define  DA7213_MICBIAS_1_6V 131 
#define  DA7213_MICBIAS_2_2V 130 
#define  DA7213_MICBIAS_2_5V 129 
#define  DA7213_MICBIAS_3_0V 128 
 int /*<<< orphan*/  DA7213_MICBIAS_CTRL ; 
 int /*<<< orphan*/  DA7213_MIC_CONFIG ; 
 int /*<<< orphan*/  DA7213_MIXIN_L_CTRL ; 
 int DA7213_MIXIN_MIX_EN ; 
 int /*<<< orphan*/  DA7213_MIXIN_R_CTRL ; 
 int /*<<< orphan*/  DA7213_MIXOUT_L_CTRL ; 
 int DA7213_MIXOUT_MIX_EN ; 
 int /*<<< orphan*/  DA7213_MIXOUT_R_CTRL ; 
 int /*<<< orphan*/  DA7213_PC_COUNT ; 
 int DA7213_PC_FREERUN_MASK ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct da7213_platform_data* FUNC2 (struct snd_soc_component*) ; 
 struct da7213_platform_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct da7213_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
	struct da7213_priv *da7213 = FUNC5(component);

	/* Default to using ALC auto offset calibration mode. */
	FUNC6(component, DA7213_ALC_CTRL1,
			    DA7213_ALC_CALIB_MODE_MAN, 0);
	da7213->alc_calib_auto = true;

	/* Default PC counter to free-running */
	FUNC6(component, DA7213_PC_COUNT, DA7213_PC_FREERUN_MASK,
			    DA7213_PC_FREERUN_MASK);

	/* Enable all Gain Ramps */
	FUNC6(component, DA7213_AUX_L_CTRL,
			    DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
	FUNC6(component, DA7213_AUX_R_CTRL,
			    DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
	FUNC6(component, DA7213_MIXIN_L_CTRL,
			    DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
	FUNC6(component, DA7213_MIXIN_R_CTRL,
			    DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
	FUNC6(component, DA7213_ADC_L_CTRL,
			    DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
	FUNC6(component, DA7213_ADC_R_CTRL,
			    DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
	FUNC6(component, DA7213_DAC_L_CTRL,
			    DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
	FUNC6(component, DA7213_DAC_R_CTRL,
			    DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
	FUNC6(component, DA7213_HP_L_CTRL,
			    DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
	FUNC6(component, DA7213_HP_R_CTRL,
			    DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);
	FUNC6(component, DA7213_LINE_CTRL,
			    DA7213_GAIN_RAMP_EN, DA7213_GAIN_RAMP_EN);

	/*
	 * There are two separate control bits for input and output mixers as
	 * well as headphone and line outs.
	 * One to enable corresponding amplifier and other to enable its
	 * output. As amplifier bits are related to power control, they are
	 * being managed by DAPM while other (non power related) bits are
	 * enabled here
	 */
	FUNC6(component, DA7213_MIXIN_L_CTRL,
			    DA7213_MIXIN_MIX_EN, DA7213_MIXIN_MIX_EN);
	FUNC6(component, DA7213_MIXIN_R_CTRL,
			    DA7213_MIXIN_MIX_EN, DA7213_MIXIN_MIX_EN);

	FUNC6(component, DA7213_MIXOUT_L_CTRL,
			    DA7213_MIXOUT_MIX_EN, DA7213_MIXOUT_MIX_EN);
	FUNC6(component, DA7213_MIXOUT_R_CTRL,
			    DA7213_MIXOUT_MIX_EN, DA7213_MIXOUT_MIX_EN);

	FUNC6(component, DA7213_HP_L_CTRL,
			    DA7213_HP_AMP_OE, DA7213_HP_AMP_OE);
	FUNC6(component, DA7213_HP_R_CTRL,
			    DA7213_HP_AMP_OE, DA7213_HP_AMP_OE);

	FUNC6(component, DA7213_LINE_CTRL,
			    DA7213_LINE_AMP_OE, DA7213_LINE_AMP_OE);

	/* Handle DT/Platform data */
	da7213->pdata = FUNC3(component->dev);
	if (!da7213->pdata)
		da7213->pdata = FUNC2(component);

	/* Set platform data values */
	if (da7213->pdata) {
		struct da7213_platform_data *pdata = da7213->pdata;
		u8 micbias_lvl = 0, dmic_cfg = 0;

		/* Set Mic Bias voltages */
		switch (pdata->micbias1_lvl) {
		case DA7213_MICBIAS_1_6V:
		case DA7213_MICBIAS_2_2V:
		case DA7213_MICBIAS_2_5V:
		case DA7213_MICBIAS_3_0V:
			micbias_lvl |= (pdata->micbias1_lvl <<
					DA7213_MICBIAS1_LEVEL_SHIFT);
			break;
		}
		switch (pdata->micbias2_lvl) {
		case DA7213_MICBIAS_1_6V:
		case DA7213_MICBIAS_2_2V:
		case DA7213_MICBIAS_2_5V:
		case DA7213_MICBIAS_3_0V:
			micbias_lvl |= (pdata->micbias2_lvl <<
					 DA7213_MICBIAS2_LEVEL_SHIFT);
			break;
		}
		FUNC6(component, DA7213_MICBIAS_CTRL,
				    DA7213_MICBIAS1_LEVEL_MASK |
				    DA7213_MICBIAS2_LEVEL_MASK, micbias_lvl);

		/* Set DMIC configuration */
		switch (pdata->dmic_data_sel) {
		case DA7213_DMIC_DATA_LFALL_RRISE:
		case DA7213_DMIC_DATA_LRISE_RFALL:
			dmic_cfg |= (pdata->dmic_data_sel <<
				     DA7213_DMIC_DATA_SEL_SHIFT);
			break;
		}
		switch (pdata->dmic_samplephase) {
		case DA7213_DMIC_SAMPLE_ON_CLKEDGE:
		case DA7213_DMIC_SAMPLE_BETWEEN_CLKEDGE:
			dmic_cfg |= (pdata->dmic_samplephase <<
				     DA7213_DMIC_SAMPLEPHASE_SHIFT);
			break;
		}
		switch (pdata->dmic_clk_rate) {
		case DA7213_DMIC_CLK_3_0MHZ:
		case DA7213_DMIC_CLK_1_5MHZ:
			dmic_cfg |= (pdata->dmic_clk_rate <<
				     DA7213_DMIC_CLK_RATE_SHIFT);
			break;
		}
		FUNC6(component, DA7213_MIC_CONFIG,
				    DA7213_DMIC_DATA_SEL_MASK |
				    DA7213_DMIC_SAMPLEPHASE_MASK |
				    DA7213_DMIC_CLK_RATE_MASK, dmic_cfg);
	}

	/* Check if MCLK provided */
	da7213->mclk = FUNC4(component->dev, "mclk");
	if (FUNC0(da7213->mclk)) {
		if (FUNC1(da7213->mclk) != -ENOENT)
			return FUNC1(da7213->mclk);
		else
			da7213->mclk = NULL;
	}

	return 0;
}