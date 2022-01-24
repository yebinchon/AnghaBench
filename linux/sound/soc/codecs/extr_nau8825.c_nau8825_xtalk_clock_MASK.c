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
struct nau8825 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int NAU8825_CLK_MCLK_SRC_MASK ; 
 int NAU8825_CLK_SRC_MASK ; 
 int NAU8825_CLK_SRC_VCO ; 
 int NAU8825_DCO_EN ; 
 int NAU8825_FLL_RATIO_MASK ; 
 int /*<<< orphan*/  NAU8825_REG_CLK_DIVIDER ; 
 int /*<<< orphan*/  NAU8825_REG_FLL1 ; 
 int /*<<< orphan*/  NAU8825_REG_FLL2 ; 
 int /*<<< orphan*/  NAU8825_REG_FLL3 ; 
 int /*<<< orphan*/  NAU8825_REG_FLL4 ; 
 int /*<<< orphan*/  NAU8825_REG_FLL5 ; 
 int /*<<< orphan*/  NAU8825_REG_FLL6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct nau8825 *nau8825)
{
	/* Recover FLL default value */
	FUNC1(nau8825->regmap, NAU8825_REG_FLL1, 0x0);
	FUNC1(nau8825->regmap, NAU8825_REG_FLL2, 0x3126);
	FUNC1(nau8825->regmap, NAU8825_REG_FLL3, 0x0008);
	FUNC1(nau8825->regmap, NAU8825_REG_FLL4, 0x0010);
	FUNC1(nau8825->regmap, NAU8825_REG_FLL5, 0x0);
	FUNC1(nau8825->regmap, NAU8825_REG_FLL6, 0x6000);
	/* Enable internal VCO clock for detection signal generated */
	FUNC0(nau8825->regmap, NAU8825_REG_CLK_DIVIDER,
		NAU8825_CLK_SRC_MASK, NAU8825_CLK_SRC_VCO);
	FUNC0(nau8825->regmap, NAU8825_REG_FLL6, NAU8825_DCO_EN,
		NAU8825_DCO_EN);
	/* Given specific clock frequency of internal clock to
	 * generate signal.
	 */
	FUNC0(nau8825->regmap, NAU8825_REG_CLK_DIVIDER,
		NAU8825_CLK_MCLK_SRC_MASK, 0xf);
	FUNC0(nau8825->regmap, NAU8825_REG_FLL1,
		NAU8825_FLL_RATIO_MASK, 0x10);
}