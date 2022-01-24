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
struct regmap {int dummy; } ;
struct nau8824 {int /*<<< orphan*/  dev; struct regmap* regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HZ ; 
#define  NAU8824_CLK_DIS 133 
#define  NAU8824_CLK_FLL_BLK 132 
#define  NAU8824_CLK_FLL_FS 131 
#define  NAU8824_CLK_FLL_MCLK 130 
#define  NAU8824_CLK_INTERNAL 129 
#define  NAU8824_CLK_MCLK 128 
 int /*<<< orphan*/  NAU8824_CLK_SRC_MASK ; 
 int /*<<< orphan*/  NAU8824_CLK_SRC_MCLK ; 
 int /*<<< orphan*/  NAU8824_CLK_SRC_VCO ; 
 int /*<<< orphan*/  NAU8824_DCO_EN ; 
 int /*<<< orphan*/  NAU8824_FLL_CLK_SRC_BLK ; 
 int /*<<< orphan*/  NAU8824_FLL_CLK_SRC_FS ; 
 int /*<<< orphan*/  NAU8824_FLL_CLK_SRC_MASK ; 
 int /*<<< orphan*/  NAU8824_FLL_CLK_SRC_MCLK ; 
 int /*<<< orphan*/  NAU8824_REG_CLK_DIVIDER ; 
 int /*<<< orphan*/  NAU8824_REG_FLL3 ; 
 int /*<<< orphan*/  NAU8824_REG_FLL6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nau8824*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nau8824*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nau8824 *nau8824,
	int clk_id, unsigned int freq)
{
	struct regmap *regmap = nau8824->regmap;

	switch (clk_id) {
	case NAU8824_CLK_DIS:
		FUNC4(regmap, NAU8824_REG_CLK_DIVIDER,
			NAU8824_CLK_SRC_MASK, NAU8824_CLK_SRC_MCLK);
		FUNC4(regmap, NAU8824_REG_FLL6,
			NAU8824_DCO_EN, 0);
		break;

	case NAU8824_CLK_MCLK:
		FUNC2(nau8824, HZ);
		FUNC4(regmap, NAU8824_REG_CLK_DIVIDER,
			NAU8824_CLK_SRC_MASK, NAU8824_CLK_SRC_MCLK);
		FUNC4(regmap, NAU8824_REG_FLL6,
			NAU8824_DCO_EN, 0);
		FUNC3(nau8824);
		break;

	case NAU8824_CLK_INTERNAL:
		FUNC4(regmap, NAU8824_REG_FLL6,
			NAU8824_DCO_EN, NAU8824_DCO_EN);
		FUNC4(regmap, NAU8824_REG_CLK_DIVIDER,
			NAU8824_CLK_SRC_MASK, NAU8824_CLK_SRC_VCO);
		break;

	case NAU8824_CLK_FLL_MCLK:
		FUNC2(nau8824, HZ);
		FUNC4(regmap, NAU8824_REG_FLL3,
			NAU8824_FLL_CLK_SRC_MASK, NAU8824_FLL_CLK_SRC_MCLK);
		FUNC3(nau8824);
		break;

	case NAU8824_CLK_FLL_BLK:
		FUNC2(nau8824, HZ);
		FUNC4(regmap, NAU8824_REG_FLL3,
			NAU8824_FLL_CLK_SRC_MASK, NAU8824_FLL_CLK_SRC_BLK);
		FUNC3(nau8824);
		break;

	case NAU8824_CLK_FLL_FS:
		FUNC2(nau8824, HZ);
		FUNC4(regmap, NAU8824_REG_FLL3,
			NAU8824_FLL_CLK_SRC_MASK, NAU8824_FLL_CLK_SRC_FS);
		FUNC3(nau8824);
		break;

	default:
		FUNC1(nau8824->dev, "Invalid clock id (%d)\n", clk_id);
		return -EINVAL;
	}

	FUNC0(nau8824->dev, "Sysclk is %dHz and clock id is %d\n", freq,
		clk_id);

	return 0;
}