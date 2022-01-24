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
struct mt6358_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/ * ana_gain; } ;

/* Variables and functions */
 size_t AUDIO_ANALOG_VOLUME_HPOUTL ; 
 int /*<<< orphan*/  DL_GAIN_N_10DB ; 
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
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON9 ; 
 int /*<<< orphan*/  MT6358_AUDNCP_CLKDIV_CON0 ; 
 int /*<<< orphan*/  MT6358_AUDNCP_CLKDIV_CON1 ; 
 int /*<<< orphan*/  MT6358_AUDNCP_CLKDIV_CON2 ; 
 int /*<<< orphan*/  MT6358_AUDNCP_CLKDIV_CON3 ; 
 int /*<<< orphan*/  MT6358_AUDNCP_CLKDIV_CON4 ; 
 int /*<<< orphan*/  MT6358_ZCD_CON2 ; 
 int /*<<< orphan*/  FUNC0 (struct mt6358_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt6358_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt6358_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt6358_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt6358_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct mt6358_priv *priv)
{
	/* Pull-down HPL/R to AVSS28_AUD */
	FUNC3(priv, true);
	/* release HP CMFB gate rstb */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON4,
			   0x1 << 6, 0x1 << 6);

	/* Reduce ESD resistance of AU_REFN */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON2, 0x4000);

	/* Set HPR/HPL gain as minimum (~ -40dB) */
	FUNC6(priv->regmap, MT6358_ZCD_CON2, DL_GAIN_N_40DB_REG);

	/* Turn on DA_600K_NCP_VA18 */
	FUNC6(priv->regmap, MT6358_AUDNCP_CLKDIV_CON1, 0x0001);
	/* Set NCP clock as 604kHz // 26MHz/43 = 604KHz */
	FUNC6(priv->regmap, MT6358_AUDNCP_CLKDIV_CON2, 0x002c);
	/* Toggle RG_DIVCKS_CHG */
	FUNC6(priv->regmap, MT6358_AUDNCP_CLKDIV_CON0, 0x0001);
	/* Set NCP soft start mode as default mode: 100us */
	FUNC6(priv->regmap, MT6358_AUDNCP_CLKDIV_CON4, 0x0003);
	/* Enable NCP */
	FUNC6(priv->regmap, MT6358_AUDNCP_CLKDIV_CON3, 0x0000);
	FUNC7(250, 270);

	/* Enable cap-less LDOs (1.5V) */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON14,
			   0x1055, 0x1055);
	/* Enable NV regulator (-1.2V) */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON15, 0x0001);
	FUNC7(100, 120);

	/* Disable AUD_ZCD */
	FUNC4(priv);

	/* Disable headphone short-circuit protection */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x3000);

	/* Enable IBIST */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON12, 0x0055);

	/* Set HP DR bias current optimization, 010: 6uA */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON11, 0x4900);
	/* Set HP & ZCD bias current optimization */
	/* 01: ZCD: 4uA, HP/HS/LO: 5uA */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON12, 0x0055);
	/* Set HPP/N STB enhance circuits */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON2, 0x4033);

	/* Enable HP aux output stage */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x000c);
	/* Enable HP aux feedback loop */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x003c);
	/* Enable HP aux CMFB loop */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON9, 0x0c00);
	/* Enable HP driver bias circuits */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x30c0);
	/* Enable HP driver core circuits */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x30f0);
	/* Short HP main output to HP aux output stage */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x00fc);

	/* Enable HP main CMFB loop */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON9, 0x0e00);
	/* Disable HP aux CMFB loop */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON9, 0x0200);

	/* Select CMFB resistor bulk to AC mode */
	/* Selec HS/LO cap size (6.5pF default) */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON10, 0x0000);

	/* Enable HP main output stage */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x00ff);
	/* Enable HPR/L main output stage step by step */
	FUNC2(priv, true);

	/* Reduce HP aux feedback loop gain */
	FUNC1(priv, true);
	/* Disable HP aux feedback loop */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x3fcf);

	/* apply volume setting */
	FUNC0(priv,
			    DL_GAIN_N_10DB,
			    priv->ana_gain[AUDIO_ANALOG_VOLUME_HPOUTL]);

	/* Disable HP aux output stage */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x3fc3);
	/* Unshort HP main output to HP aux output stage */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x3f03);
	FUNC7(100, 120);

	/* Enable AUD_CLK */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON13, 0x1, 0x1);
	/* Enable Audio DAC  */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x30ff);
	/* Enable low-noise mode of DAC */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON9, 0xf201);
	FUNC7(100, 120);

	/* Switch HPL MUX to audio DAC */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x32ff);
	/* Switch HPR MUX to audio DAC */
	FUNC6(priv->regmap, MT6358_AUDDEC_ANA_CON0, 0x3aff);

	/* Disable Pull-down HPL/R to AVSS28_AUD */
	FUNC3(priv, false);

	return 0;
}