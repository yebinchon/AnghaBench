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
typedef  int u32 ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct clk_bulk_data {char* id; int /*<<< orphan*/  clk; } ;
struct aic32x4_priv {int power_cfg; int micpga_routing; scalar_t__ setup; int /*<<< orphan*/  rstn_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIC32X4_ADCSETUP ; 
 int AIC32X4_AVDDWEAKDISABLE ; 
 int /*<<< orphan*/  AIC32X4_CMMODE ; 
 int AIC32X4_LADC_EN ; 
 int /*<<< orphan*/  AIC32X4_LDOCTL ; 
 int AIC32X4_LDOCTLEN ; 
 int AIC32X4_LDOIN2HP ; 
 int AIC32X4_LDOIN_18_36 ; 
 int /*<<< orphan*/  AIC32X4_LMICPGANIN ; 
 int AIC32X4_LMICPGANIN_CM1L_10K ; 
 int AIC32X4_LMICPGANIN_IN2R_10K ; 
 int /*<<< orphan*/  AIC32X4_MICBIAS ; 
 int AIC32X4_MICBIAS_2075V ; 
 int AIC32X4_MICBIAS_LDOIN ; 
 int AIC32X4_MICPGA_ROUTE_LMIC_IN2R_10K ; 
 int AIC32X4_MICPGA_ROUTE_RMIC_IN1L_10K ; 
 int /*<<< orphan*/  AIC32X4_PWRCFG ; 
 int AIC32X4_PWR_AIC32X4_LDO_ENABLE ; 
 int AIC32X4_PWR_AVDD_DVDD_WEAK_DISABLE ; 
 int AIC32X4_PWR_CMMODE_HP_LDOIN_POWERED ; 
 int AIC32X4_PWR_CMMODE_LDOIN_RANGE_18_36 ; 
 int AIC32X4_PWR_MICBIAS_2075_LDOIN ; 
 int AIC32X4_RADC_EN ; 
 int /*<<< orphan*/  AIC32X4_RESET ; 
 int /*<<< orphan*/  AIC32X4_RMICPGANIN ; 
 int AIC32X4_RMICPGANIN_CM1R_10K ; 
 int AIC32X4_RMICPGANIN_IN1L_10K ; 
 int /*<<< orphan*/  FUNC0 (struct clk_bulk_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_bulk_data*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct aic32x4_priv* FUNC8 (struct snd_soc_component*) ; 
 int FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component)
{
	struct aic32x4_priv *aic32x4 = FUNC8(component);
	u32 tmp_reg;
	int ret;

	struct clk_bulk_data clocks[] = {
		{ .id = "codec_clkin" },
		{ .id = "pll" },
		{ .id = "bdiv" },
		{ .id = "mdac" },
	};

	ret = FUNC3(component->dev, FUNC0(clocks), clocks);
	if (ret)
		return ret;

	if (FUNC4(aic32x4->rstn_gpio)) {
		FUNC7(10);
		FUNC5(aic32x4->rstn_gpio, 1);
		FUNC6(1);
	}

	FUNC10(component, AIC32X4_RESET, 0x01);

	if (aic32x4->setup)
		FUNC1(component);

	FUNC2(clocks[0].clk, clocks[1].clk);
	FUNC2(clocks[2].clk, clocks[3].clk);

	/* Power platform configuration */
	if (aic32x4->power_cfg & AIC32X4_PWR_MICBIAS_2075_LDOIN) {
		FUNC10(component, AIC32X4_MICBIAS,
				AIC32X4_MICBIAS_LDOIN | AIC32X4_MICBIAS_2075V);
	}
	if (aic32x4->power_cfg & AIC32X4_PWR_AVDD_DVDD_WEAK_DISABLE)
		FUNC10(component, AIC32X4_PWRCFG, AIC32X4_AVDDWEAKDISABLE);

	tmp_reg = (aic32x4->power_cfg & AIC32X4_PWR_AIC32X4_LDO_ENABLE) ?
			AIC32X4_LDOCTLEN : 0;
	FUNC10(component, AIC32X4_LDOCTL, tmp_reg);

	tmp_reg = FUNC9(component, AIC32X4_CMMODE);
	if (aic32x4->power_cfg & AIC32X4_PWR_CMMODE_LDOIN_RANGE_18_36)
		tmp_reg |= AIC32X4_LDOIN_18_36;
	if (aic32x4->power_cfg & AIC32X4_PWR_CMMODE_HP_LDOIN_POWERED)
		tmp_reg |= AIC32X4_LDOIN2HP;
	FUNC10(component, AIC32X4_CMMODE, tmp_reg);

	/* Mic PGA routing */
	if (aic32x4->micpga_routing & AIC32X4_MICPGA_ROUTE_LMIC_IN2R_10K)
		FUNC10(component, AIC32X4_LMICPGANIN,
				AIC32X4_LMICPGANIN_IN2R_10K);
	else
		FUNC10(component, AIC32X4_LMICPGANIN,
				AIC32X4_LMICPGANIN_CM1L_10K);
	if (aic32x4->micpga_routing & AIC32X4_MICPGA_ROUTE_RMIC_IN1L_10K)
		FUNC10(component, AIC32X4_RMICPGANIN,
				AIC32X4_RMICPGANIN_IN1L_10K);
	else
		FUNC10(component, AIC32X4_RMICPGANIN,
				AIC32X4_RMICPGANIN_CM1R_10K);

	/*
	 * Workaround: for an unknown reason, the ADC needs to be powered up
	 * and down for the first capture to work properly. It seems related to
	 * a HW BUG or some kind of behavior not documented in the datasheet.
	 */
	tmp_reg = FUNC9(component, AIC32X4_ADCSETUP);
	FUNC10(component, AIC32X4_ADCSETUP, tmp_reg |
				AIC32X4_LADC_EN | AIC32X4_RADC_EN);
	FUNC10(component, AIC32X4_ADCSETUP, tmp_reg);

	return 0;
}