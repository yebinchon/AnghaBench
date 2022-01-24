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
struct sta32x_priv {int* coef_shadow; int /*<<< orphan*/  supplies; int /*<<< orphan*/  watchdog_work; struct sta32x_platform_data* pdata; int /*<<< orphan*/  regmap; scalar_t__ xti_clk; struct snd_soc_component* component; } ;
struct sta32x_platform_data {int drop_compensation_ns; int output_conf; int ch1_output_mapping; int ch2_output_mapping; int ch3_output_mapping; scalar_t__ needs_esd_watchdog; scalar_t__ invalid_input_detect_mute; scalar_t__ odd_pwm_speed_mode; scalar_t__ am_reduction_mode; scalar_t__ max_power_correction; scalar_t__ max_power_use_mpcc; int /*<<< orphan*/  fault_detect_recovery; int /*<<< orphan*/  thermal_warning_adjustment; int /*<<< orphan*/  thermal_warning_recovery; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  STA32X_C1CFG ; 
 int /*<<< orphan*/  STA32X_C2CFG ; 
 int /*<<< orphan*/  STA32X_C3CFG ; 
 int /*<<< orphan*/  STA32X_CONFA ; 
 int STA32X_CONFA_FDRB ; 
 int STA32X_CONFA_TWAB ; 
 int STA32X_CONFA_TWRB ; 
 int /*<<< orphan*/  STA32X_CONFC ; 
 int STA32X_CONFC_CSZ_MASK ; 
 int STA32X_CONFC_CSZ_SHIFT ; 
 int /*<<< orphan*/  STA32X_CONFE ; 
 int STA32X_CONFE_AME ; 
 int STA32X_CONFE_MPC ; 
 int STA32X_CONFE_MPCV ; 
 int STA32X_CONFE_PWMS ; 
 int /*<<< orphan*/  STA32X_CONFF ; 
 int STA32X_CONFF_IDE ; 
 int STA32X_CONFF_OCFG_MASK ; 
 int STA32X_CONFF_OCFG_SHIFT ; 
 int STA32X_CxCFG_OM_MASK ; 
 int STA32X_CxCFG_OM_SHIFT ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct sta32x_priv* FUNC8 (struct snd_soc_component*) ; 
 int FUNC9 (struct sta32x_priv*) ; 
 int /*<<< orphan*/  sta32x_watchdog ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component)
{
	struct sta32x_priv *sta32x = FUNC8(component);
	struct sta32x_platform_data *pdata = sta32x->pdata;
	int i, ret = 0, thermal = 0;

	sta32x->component = component;

	if (sta32x->xti_clk) {
		ret = FUNC2(sta32x->xti_clk);
		if (ret != 0) {
			FUNC3(component->dev,
				"Failed to enable clock: %d\n", ret);
			return ret;
		}
	}

	ret = FUNC6(FUNC0(sta32x->supplies),
				    sta32x->supplies);
	if (ret != 0) {
		FUNC3(component->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC9(sta32x);
	if (ret < 0) {
		FUNC3(component->dev, "Failed to startup device\n");
		return ret;
	}

	/* CONFA */
	if (!pdata->thermal_warning_recovery)
		thermal |= STA32X_CONFA_TWAB;
	if (!pdata->thermal_warning_adjustment)
		thermal |= STA32X_CONFA_TWRB;
	if (!pdata->fault_detect_recovery)
		thermal |= STA32X_CONFA_FDRB;
	FUNC4(sta32x->regmap, STA32X_CONFA,
			   STA32X_CONFA_TWAB | STA32X_CONFA_TWRB |
			   STA32X_CONFA_FDRB,
			   thermal);

	/* CONFC */
	FUNC4(sta32x->regmap, STA32X_CONFC,
			   STA32X_CONFC_CSZ_MASK,
			   pdata->drop_compensation_ns
				<< STA32X_CONFC_CSZ_SHIFT);

	/* CONFE */
	FUNC4(sta32x->regmap, STA32X_CONFE,
			   STA32X_CONFE_MPCV,
			   pdata->max_power_use_mpcc ?
				STA32X_CONFE_MPCV : 0);
	FUNC4(sta32x->regmap, STA32X_CONFE,
			   STA32X_CONFE_MPC,
			   pdata->max_power_correction ?
				STA32X_CONFE_MPC : 0);
	FUNC4(sta32x->regmap, STA32X_CONFE,
			   STA32X_CONFE_AME,
			   pdata->am_reduction_mode ?
				STA32X_CONFE_AME : 0);
	FUNC4(sta32x->regmap, STA32X_CONFE,
			   STA32X_CONFE_PWMS,
			   pdata->odd_pwm_speed_mode ?
				STA32X_CONFE_PWMS : 0);

	/*  CONFF */
	FUNC4(sta32x->regmap, STA32X_CONFF,
			   STA32X_CONFF_IDE,
			   pdata->invalid_input_detect_mute ?
				STA32X_CONFF_IDE : 0);

	/* select output configuration  */
	FUNC4(sta32x->regmap, STA32X_CONFF,
			   STA32X_CONFF_OCFG_MASK,
			   pdata->output_conf
				<< STA32X_CONFF_OCFG_SHIFT);

	/* channel to output mapping */
	FUNC4(sta32x->regmap, STA32X_C1CFG,
			   STA32X_CxCFG_OM_MASK,
			   pdata->ch1_output_mapping
				<< STA32X_CxCFG_OM_SHIFT);
	FUNC4(sta32x->regmap, STA32X_C2CFG,
			   STA32X_CxCFG_OM_MASK,
			   pdata->ch2_output_mapping
				<< STA32X_CxCFG_OM_SHIFT);
	FUNC4(sta32x->regmap, STA32X_C3CFG,
			   STA32X_CxCFG_OM_MASK,
			   pdata->ch3_output_mapping
				<< STA32X_CxCFG_OM_SHIFT);

	/* initialize coefficient shadow RAM with reset values */
	for (i = 4; i <= 49; i += 5)
		sta32x->coef_shadow[i] = 0x400000;
	for (i = 50; i <= 54; i++)
		sta32x->coef_shadow[i] = 0x7fffff;
	sta32x->coef_shadow[55] = 0x5a9df7;
	sta32x->coef_shadow[56] = 0x7fffff;
	sta32x->coef_shadow[59] = 0x7fffff;
	sta32x->coef_shadow[60] = 0x400000;
	sta32x->coef_shadow[61] = 0x400000;

	if (sta32x->pdata->needs_esd_watchdog)
		FUNC1(&sta32x->watchdog_work, sta32x_watchdog);

	FUNC7(component, SND_SOC_BIAS_STANDBY);
	/* Bias level configuration will have done an extra enable */
	FUNC5(FUNC0(sta32x->supplies), sta32x->supplies);

	return 0;
}