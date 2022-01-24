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
struct fsl_esai {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESAI_GPIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESAI_PCRC_PC_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESAI_PRRC_PDC_MASK ; 
 int /*<<< orphan*/  ESAI_xCR_xPR ; 
 int /*<<< orphan*/  ESAI_xCR_xPR_MASK ; 
 int ESAI_xFCR_xFEN ; 
 int /*<<< orphan*/  REG_ESAI_PCRC ; 
 int /*<<< orphan*/  REG_ESAI_PRRC ; 
 int /*<<< orphan*/  REG_ESAI_RCR ; 
 int /*<<< orphan*/  REG_ESAI_RFCR ; 
 int /*<<< orphan*/  REG_ESAI_TCR ; 
 int /*<<< orphan*/  REG_ESAI_TFCR ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_esai*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_esai*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_esai*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fsl_esai*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(unsigned long arg)
{
	struct fsl_esai *esai_priv = (struct fsl_esai *)arg;
	bool tx = true, rx = false, enabled[2];
	u32 tfcr, rfcr;

	/* Save the registers */
	FUNC6(esai_priv->regmap, REG_ESAI_TFCR, &tfcr);
	FUNC6(esai_priv->regmap, REG_ESAI_RFCR, &rfcr);
	enabled[tx] = tfcr & ESAI_xFCR_xFEN;
	enabled[rx] = rfcr & ESAI_xFCR_xFEN;

	/* Stop the tx & rx */
	FUNC5(esai_priv, tx);
	FUNC5(esai_priv, rx);

	/* Reset the esai, and ignore return value */
	FUNC2(esai_priv);

	/* Enforce ESAI personal resets for both TX and RX */
	FUNC7(esai_priv->regmap, REG_ESAI_TCR,
			   ESAI_xCR_xPR_MASK, ESAI_xCR_xPR);
	FUNC7(esai_priv->regmap, REG_ESAI_RCR,
			   ESAI_xCR_xPR_MASK, ESAI_xCR_xPR);

	/* Restore registers by regcache_sync, and ignore return value */
	FUNC3(esai_priv);

	/* Remove ESAI personal resets by configuring PCRC and PRRC also */
	FUNC7(esai_priv->regmap, REG_ESAI_TCR,
			   ESAI_xCR_xPR_MASK, 0);
	FUNC7(esai_priv->regmap, REG_ESAI_RCR,
			   ESAI_xCR_xPR_MASK, 0);
	FUNC7(esai_priv->regmap, REG_ESAI_PRRC,
			   ESAI_PRRC_PDC_MASK, FUNC1(ESAI_GPIO));
	FUNC7(esai_priv->regmap, REG_ESAI_PCRC,
			   ESAI_PCRC_PC_MASK, FUNC0(ESAI_GPIO));

	/* Restart tx / rx, if they already enabled */
	if (enabled[tx])
		FUNC4(esai_priv, tx);
	if (enabled[rx])
		FUNC4(esai_priv, rx);
}