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
 int /*<<< orphan*/  DL_GAIN_N_40DB ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON0 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON1 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON12 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON13 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON14 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON15 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON2 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON4 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON9 ; 
 int /*<<< orphan*/  MT6358_AUDNCP_CLKDIV_CON3 ; 
 int /*<<< orphan*/  FUNC0 (struct mt6358_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt6358_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt6358_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt6358_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct mt6358_priv *priv)
{
	/* Pull-down HPL/R to AVSS28_AUD */
	FUNC3(priv, true);

	/* HPR/HPL mux to open */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON0,
			   0x0f00, 0x0000);

	/* Disable low-noise mode of DAC */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON9,
			   0x0001, 0x0000);

	/* Disable Audio DAC */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON0,
			   0x000f, 0x0000);

	/* Disable AUD_CLK */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON13, 0x1, 0x0);

	/* Short HP main output to HP aux output stage */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x3fc3);
	/* Enable HP aux output stage */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x3fcf);

	/* decrease HPL/R gain to normal gain step by step */
	FUNC0(priv,
			    priv->ana_gain[AUDIO_ANALOG_VOLUME_HPOUTL],
			    DL_GAIN_N_40DB);

	/* Enable HP aux feedback loop */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x3fff);

	/* Reduce HP aux feedback loop gain */
	FUNC1(priv, false);

	/* decrease HPR/L main output stage step by step */
	FUNC2(priv, false);

	/* Disable HP main output stage */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON1, 0x3, 0x0);

	/* Enable HP aux CMFB loop */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON9, 0x0e00);

	/* Disable HP main CMFB loop */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON9, 0x0c00);

	/* Unshort HP main output to HP aux output stage */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON1,
			   0x3 << 6, 0x0);

	/* Disable HP driver core circuits */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON0,
			   0x3 << 4, 0x0);

	/* Disable HP driver bias circuits */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON0,
			   0x3 << 6, 0x0);

	/* Disable HP aux CMFB loop */
	FUNC5(priv->regmap, MT6358_AUDDEC_ANA_CON9, 0x0000);

	/* Disable HP aux feedback loop */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON1,
			   0x3 << 4, 0x0);

	/* Disable HP aux output stage */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON1,
			   0x3 << 2, 0x0);

	/* Disable IBIST */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON12,
			   0x1 << 8, 0x1 << 8);

	/* Disable NV regulator (-1.2V) */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON15, 0x1, 0x0);
	/* Disable cap-less LDOs (1.5V) */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON14,
			   0x1055, 0x0);
	/* Disable NCP */
	FUNC4(priv->regmap, MT6358_AUDNCP_CLKDIV_CON3,
			   0x1, 0x1);

	/* Increase ESD resistance of AU_REFN */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON2,
			   0x1 << 14, 0x0);

	/* Set HP CMFB gate rstb */
	FUNC4(priv->regmap, MT6358_AUDDEC_ANA_CON4,
			   0x1 << 6, 0x0);
	/* disable Pull-down HPL/R to AVSS28_AUD */
	FUNC3(priv, false);

	return 0;
}