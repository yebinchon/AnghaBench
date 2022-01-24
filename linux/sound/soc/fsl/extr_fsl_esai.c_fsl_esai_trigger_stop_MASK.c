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
struct fsl_esai {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ESAI_xCR_RE_MASK ; 
 int ESAI_xCR_TE_MASK ; 
 int ESAI_xCR_xEIE_MASK ; 
 int ESAI_xFCR_xFEN ; 
 int ESAI_xFCR_xFR ; 
 int ESAI_xSMA_xS_MASK ; 
 int ESAI_xSMB_xS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct fsl_esai *esai_priv, bool tx)
{
	FUNC4(esai_priv->regmap, FUNC0(tx),
			   ESAI_xCR_xEIE_MASK, 0);

	FUNC4(esai_priv->regmap, FUNC0(tx),
			   tx ? ESAI_xCR_TE_MASK : ESAI_xCR_RE_MASK, 0);
	FUNC4(esai_priv->regmap, FUNC2(tx),
			   ESAI_xSMA_xS_MASK, 0);
	FUNC4(esai_priv->regmap, FUNC3(tx),
			   ESAI_xSMB_xS_MASK, 0);

	/* Disable and reset FIFO */
	FUNC4(esai_priv->regmap, FUNC1(tx),
			   ESAI_xFCR_xFR | ESAI_xFCR_xFEN, ESAI_xFCR_xFR);
	FUNC4(esai_priv->regmap, FUNC1(tx),
			   ESAI_xFCR_xFR, 0);
}