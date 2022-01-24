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
struct mt6358_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT6358_ACCDET_CON13 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON0 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON6 ; 
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON7 ; 
 int /*<<< orphan*/  MT6358_DRV_CON3 ; 
 int RG_AUDHPLSCDISABLE_VAUDP15_MASK_SFT ; 
 int RG_AUDHPLSCDISABLE_VAUDP15_SFT ; 
 int RG_AUDHPRSCDISABLE_VAUDP15_MASK_SFT ; 
 int RG_AUDHPRSCDISABLE_VAUDP15_SFT ; 
 int RG_AUDHSSCDISABLE_VAUDP15_MASK_SFT ; 
 int RG_AUDHSSCDISABLE_VAUDP15_SFT ; 
 int RG_AUDLOLSCDISABLE_VAUDP15_MASK_SFT ; 
 int RG_AUDLOLSCDISABLE_VAUDP15_SFT ; 
 int /*<<< orphan*/  FUNC0 (struct mt6358_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt6358_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct mt6358_priv *priv)
{
	/* Disable HeadphoneL/HeadphoneR short circuit protection */
	FUNC2(priv->regmap, MT6358_AUDDEC_ANA_CON0,
			   RG_AUDHPLSCDISABLE_VAUDP15_MASK_SFT,
			   0x1 << RG_AUDHPLSCDISABLE_VAUDP15_SFT);
	FUNC2(priv->regmap, MT6358_AUDDEC_ANA_CON0,
			   RG_AUDHPRSCDISABLE_VAUDP15_MASK_SFT,
			   0x1 << RG_AUDHPRSCDISABLE_VAUDP15_SFT);
	/* Disable voice short circuit protection */
	FUNC2(priv->regmap, MT6358_AUDDEC_ANA_CON6,
			   RG_AUDHSSCDISABLE_VAUDP15_MASK_SFT,
			   0x1 << RG_AUDHSSCDISABLE_VAUDP15_SFT);
	/* disable LO buffer left short circuit protection */
	FUNC2(priv->regmap, MT6358_AUDDEC_ANA_CON7,
			   RG_AUDLOLSCDISABLE_VAUDP15_MASK_SFT,
			   0x1 << RG_AUDLOLSCDISABLE_VAUDP15_SFT);

	/* accdet s/w enable */
	FUNC2(priv->regmap, MT6358_ACCDET_CON13,
			   0xFFFF, 0x700E);

	/* gpio miso driving set to 4mA */
	FUNC3(priv->regmap, MT6358_DRV_CON3, 0x8888);

	/* set gpio */
	FUNC1(priv);
	FUNC0(priv);
}