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
struct fsl_spdif_priv {struct regmap* regmap; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  REG_SPDIF_SCR ; 
 int SCR_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct fsl_spdif_priv *spdif_priv)
{
	struct regmap *regmap = spdif_priv->regmap;
	u32 val, cycle = 1000;

	FUNC0(regmap, true);

	FUNC4(regmap, REG_SPDIF_SCR, SCR_SOFT_RESET);

	/*
	 * RESET bit would be cleared after finishing its reset procedure,
	 * which typically lasts 8 cycles. 1000 cycles will keep it safe.
	 */
	do {
		FUNC3(regmap, REG_SPDIF_SCR, &val);
	} while ((val & SCR_SOFT_RESET) && cycle--);

	FUNC0(regmap, false);
	FUNC1(regmap);
	FUNC2(regmap);

	if (cycle)
		return 0;
	else
		return -EBUSY;
}