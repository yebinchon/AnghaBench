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
typedef  int /*<<< orphan*/  u8 ;
struct snd_soc_component {int dummy; } ;
struct da7213_priv {scalar_t__ alc_calib_auto; } ;

/* Variables and functions */
 int DA7213_ADC_EN ; 
 int /*<<< orphan*/  DA7213_ADC_L_CTRL ; 
 int /*<<< orphan*/  DA7213_ADC_R_CTRL ; 
 int /*<<< orphan*/  DA7213_MIC_1_CTRL ; 
 int /*<<< orphan*/  DA7213_MIC_2_CTRL ; 
 int DA7213_MIXIN_L_MIX_SELECT_MIC_1 ; 
 int DA7213_MIXIN_L_MIX_SELECT_MIC_2 ; 
 int /*<<< orphan*/  DA7213_MIXIN_L_SELECT ; 
 int DA7213_MIXIN_R_MIX_SELECT_MIC_1 ; 
 int DA7213_MIXIN_R_MIX_SELECT_MIC_2 ; 
 int /*<<< orphan*/  DA7213_MIXIN_R_SELECT ; 
 int DA7213_MUTE_EN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 struct da7213_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct snd_soc_component *component)
{
	struct da7213_priv *da7213 = FUNC2(component);
	u8 adc_l_ctrl, adc_r_ctrl;
	u8 mixin_l_sel, mixin_r_sel;
	u8 mic_1_ctrl, mic_2_ctrl;

	/* Save current values from ADC control registers */
	adc_l_ctrl = FUNC3(component, DA7213_ADC_L_CTRL);
	adc_r_ctrl = FUNC3(component, DA7213_ADC_R_CTRL);

	/* Save current values from MIXIN_L/R_SELECT registers */
	mixin_l_sel = FUNC3(component, DA7213_MIXIN_L_SELECT);
	mixin_r_sel = FUNC3(component, DA7213_MIXIN_R_SELECT);

	/* Save current values from MIC control registers */
	mic_1_ctrl = FUNC3(component, DA7213_MIC_1_CTRL);
	mic_2_ctrl = FUNC3(component, DA7213_MIC_2_CTRL);

	/* Enable ADC Left and Right */
	FUNC4(component, DA7213_ADC_L_CTRL, DA7213_ADC_EN,
			    DA7213_ADC_EN);
	FUNC4(component, DA7213_ADC_R_CTRL, DA7213_ADC_EN,
			    DA7213_ADC_EN);

	/* Enable MIC paths */
	FUNC4(component, DA7213_MIXIN_L_SELECT,
			    DA7213_MIXIN_L_MIX_SELECT_MIC_1 |
			    DA7213_MIXIN_L_MIX_SELECT_MIC_2,
			    DA7213_MIXIN_L_MIX_SELECT_MIC_1 |
			    DA7213_MIXIN_L_MIX_SELECT_MIC_2);
	FUNC4(component, DA7213_MIXIN_R_SELECT,
			    DA7213_MIXIN_R_MIX_SELECT_MIC_2 |
			    DA7213_MIXIN_R_MIX_SELECT_MIC_1,
			    DA7213_MIXIN_R_MIX_SELECT_MIC_2 |
			    DA7213_MIXIN_R_MIX_SELECT_MIC_1);

	/* Mute MIC PGAs */
	FUNC4(component, DA7213_MIC_1_CTRL, DA7213_MUTE_EN,
			    DA7213_MUTE_EN);
	FUNC4(component, DA7213_MIC_2_CTRL, DA7213_MUTE_EN,
			    DA7213_MUTE_EN);

	/* Perform calibration */
	if (da7213->alc_calib_auto)
		FUNC0(component);
	else
		FUNC1(component);

	/* Restore MIXIN_L/R_SELECT registers to their original states */
	FUNC5(component, DA7213_MIXIN_L_SELECT, mixin_l_sel);
	FUNC5(component, DA7213_MIXIN_R_SELECT, mixin_r_sel);

	/* Restore ADC control registers to their original states */
	FUNC5(component, DA7213_ADC_L_CTRL, adc_l_ctrl);
	FUNC5(component, DA7213_ADC_R_CTRL, adc_r_ctrl);

	/* Restore original values of MIC control registers */
	FUNC5(component, DA7213_MIC_1_CTRL, mic_1_ctrl);
	FUNC5(component, DA7213_MIC_2_CTRL, mic_2_ctrl);
}