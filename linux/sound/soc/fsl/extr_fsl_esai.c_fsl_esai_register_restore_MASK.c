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
 int /*<<< orphan*/  ESAI_xFCR_xFR ; 
 int /*<<< orphan*/  REG_ESAI_RFCR ; 
 int /*<<< orphan*/  REG_ESAI_TFCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fsl_esai *esai_priv)
{
	int ret;

	/* FIFO reset for safety */
	FUNC2(esai_priv->regmap, REG_ESAI_TFCR,
			   ESAI_xFCR_xFR, ESAI_xFCR_xFR);
	FUNC2(esai_priv->regmap, REG_ESAI_RFCR,
			   ESAI_xFCR_xFR, ESAI_xFCR_xFR);

	FUNC0(esai_priv->regmap);
	ret = FUNC1(esai_priv->regmap);
	if (ret)
		return ret;

	/* FIFO reset done */
	FUNC2(esai_priv->regmap, REG_ESAI_TFCR, ESAI_xFCR_xFR, 0);
	FUNC2(esai_priv->regmap, REG_ESAI_RFCR, ESAI_xFCR_xFR, 0);

	return 0;
}