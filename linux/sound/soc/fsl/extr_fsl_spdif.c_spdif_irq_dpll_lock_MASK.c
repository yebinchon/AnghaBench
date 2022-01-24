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
struct regmap {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fsl_spdif_priv {int dpll_locked; struct platform_device* pdev; struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SPDIF_SRPC ; 
 int SRPC_DPLL_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC2(struct fsl_spdif_priv *spdif_priv)
{
	struct regmap *regmap = spdif_priv->regmap;
	struct platform_device *pdev = spdif_priv->pdev;
	u32 locked;

	FUNC1(regmap, REG_SPDIF_SRPC, &locked);
	locked &= SRPC_DPLL_LOCKED;

	FUNC0(&pdev->dev, "isr: Rx dpll %s \n",
			locked ? "locked" : "loss lock");

	spdif_priv->dpll_locked = locked ? true : false;
}