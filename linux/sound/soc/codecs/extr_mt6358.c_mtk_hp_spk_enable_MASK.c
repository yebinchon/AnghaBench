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
struct mt6358_priv {int* ana_gain; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 size_t AUDIO_ANALOG_VOLUME_HPOUTL ; 
 size_t AUDIO_ANALOG_VOLUME_LINEOUTL ; 
 size_t AUDIO_ANALOG_VOLUME_LINEOUTR ; 
 int /*<<< orphan*/  DL_GAIN_N_10DB ; 
 int DL_GAIN_N_10DB_REG ; 
 int DL_GAIN_N_40DB_REG ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON0 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON1 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON10 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON11 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON12 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON13 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON14 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON15 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON2 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON4 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON7 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON9 ; 
 int /*<<< orphan*/  MT6358_AUDNCP_CLKDIV_CON0 ; 
 int /*<<< orphan*/  MT6358_AUDNCP_CLKDIV_CON1 ; 
 int /*<<< orphan*/  MT6358_AUDNCP_CLKDIV_CON2 ; 
 int /*<<< orphan*/  MT6358_AUDNCP_CLKDIV_CON3 ; 
 int /*<<< orphan*/  MT6358_AUDNCP_CLKDIV_CON4 ; 
 int /*<<< orphan*/  MT6358_ZCD_CON1 ; 
 int /*<<< orphan*/  MT6358_ZCD_CON2 ; 
 int RG_AUDLOLGAIN_MASK_SFT ; 
 int RG_AUDLOLGAIN_SFT ; 
 int RG_AUDLORGAIN_MASK_SFT ; 
 int RG_AUDLORGAIN_SFT ; 
 int /*<<< orphan*/  FUNC0 (struct mt6358_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt6358_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt6358_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt6358_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct mt6358_priv *priv)
{
	/* Pull-down HPL/R to AVSS28_AUD */
	FUNC2(priv, true);
	/* release HP CMFB gate rstb */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON4,
			   0x1 << 6, 0x1 << 6);

	/* Reduce ESD resistance of AU_REFN */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON2, 0x4000);

	/* Set HPR/HPL gain to -10dB */
	FUNC5(priv->regmap, MT6358_ZCD_CON2, DL_GAIN_N_10DB_REG);

	/* Turn on DA_600K_NCP_VA18 */
	FUNC5(priv->regmap, MT6358_AUDNCP_CLKDIV_CON1, 0x0001);
	/* Set NCP clock as 604kHz // 26MHz/43 = 604KHz */
	FUNC5(priv->regmap, MT6358_AUDNCP_CLKDIV_CON2, 0x002c);
	/* Toggle RG_DIVCKS_CHG */
	FUNC5(priv->regmap, MT6358_AUDNCP_CLKDIV_CON0, 0x0001);
	/* Set NCP soft start mode as default mode: 100us */
	FUNC5(priv->regmap, MT6358_AUDNCP_CLKDIV_CON4, 0x0003);
	/* Enable NCP */
	FUNC5(priv->regmap, MT6358_AUDNCP_CLKDIV_CON3, 0x0000);
	FUNC6(250, 270);

	/* Enable cap-less LDOs (1.5V) */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON14,
			   0x1055, 0x1055);
	/* Enable NV regulator (-1.2V) */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON15, 0x0001);
	FUNC6(100, 120);

	/* Disable AUD_ZCD */
	FUNC3(priv);

	/* Disable headphone short-circuit protection */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x3000);

	/* Enable IBIST */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON12, 0x0055);

	/* Set HP DR bias current optimization, 010: 6uA */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON11, 0x4900);
	/* Set HP & ZCD bias current optimization */
	/* 01: ZCD: 4uA, HP/HS/LO: 5uA */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON12, 0x0055);
	/* Set HPP/N STB enhance circuits */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON2, 0x4033);

	/* Disable Pull-down HPL/R to AVSS28_AUD */
	FUNC2(priv, false);

	/* Enable HP driver bias circuits */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x30c0);
	/* Enable HP driver core circuits */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x30f0);
	/* Enable HP main CMFB loop */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON9, 0x0200);

	/* Select CMFB resistor bulk to AC mode */
	/* Selec HS/LO cap size (6.5pF default) */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON10, 0x0000);

	/* Enable HP main output stage */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x0003);
	/* Enable HPR/L main output stage step by step */
	FUNC1(priv, true);

	/* Set LO gain as minimum (~ -40dB) */
	FUNC5(priv->regmap, MT6358_ZCD_CON1, DL_GAIN_N_40DB_REG);
	/* apply volume setting */
	FUNC0(priv,
			    DL_GAIN_N_10DB,
			    priv->ana_gain[AUDIO_ANALOG_VOLUME_HPOUTL]);

	/* Set LO STB enhance circuits */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON7, 0x0110);
	/* Enable LO driver bias circuits */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON7, 0x0112);
	/* Enable LO driver core circuits */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON7, 0x0113);

	/* Set LOL gain to normal gain step by step */
	FUNC4(priv->regmap, MT6358_ZCD_CON1,
			   RG_AUDLOLGAIN_MASK_SFT,
			   priv->ana_gain[AUDIO_ANALOG_VOLUME_LINEOUTL] <<
			   RG_AUDLOLGAIN_SFT);
	FUNC4(priv->regmap, MT6358_ZCD_CON1,
			   RG_AUDLORGAIN_MASK_SFT,
			   priv->ana_gain[AUDIO_ANALOG_VOLUME_LINEOUTR] <<
			   RG_AUDLORGAIN_SFT);

	/* Enable AUD_CLK */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON13, 0x1, 0x1);
	/* Enable Audio DAC  */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x30f9);
	/* Enable low-noise mode of DAC */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON9, 0x0201);
	/* Switch LOL MUX to audio DAC */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON7, 0x011b);
	/* Switch HPL/R MUX to Line-out */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x35f9);

	return 0;
}