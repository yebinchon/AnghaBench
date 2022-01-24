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
struct cs35l35_private {int /*<<< orphan*/  dev; struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS35L35_BST_CONV_COEF_1 ; 
 int /*<<< orphan*/  CS35L35_BST_CONV_COEF_2 ; 
 int /*<<< orphan*/  CS35L35_BST_CONV_LBST_MASK ; 
 int /*<<< orphan*/  CS35L35_BST_CONV_SLOPE_COMP ; 
 int /*<<< orphan*/  CS35L35_BST_CONV_SWFREQ_MASK ; 
 int /*<<< orphan*/  CS35L35_BST_CONV_SW_FREQ ; 
 unsigned int CS35L35_BST_IPK_MASK ; 
 int /*<<< orphan*/  CS35L35_BST_PEAK_I ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct cs35l35_private *cs35l35,
				  int inductor)
{
	struct regmap *regmap = cs35l35->regmap;
	unsigned int bst_ipk = 0;

	/*
	 * Digital Boost Converter Configuration for feedback,
	 * ramping, switching frequency, and estimation block seeding.
	 */

	FUNC2(regmap, CS35L35_BST_CONV_SW_FREQ,
			   CS35L35_BST_CONV_SWFREQ_MASK, 0x00);

	FUNC1(regmap, CS35L35_BST_PEAK_I, &bst_ipk);
	bst_ipk &= CS35L35_BST_IPK_MASK;

	switch (inductor) {
	case 1000: /* 1 uH */
		FUNC3(regmap, CS35L35_BST_CONV_COEF_1, 0x24);
		FUNC3(regmap, CS35L35_BST_CONV_COEF_2, 0x24);
		FUNC2(regmap, CS35L35_BST_CONV_SW_FREQ,
				   CS35L35_BST_CONV_LBST_MASK, 0x00);

		if (bst_ipk < 0x04)
			FUNC3(regmap, CS35L35_BST_CONV_SLOPE_COMP, 0x1B);
		else
			FUNC3(regmap, CS35L35_BST_CONV_SLOPE_COMP, 0x4E);
		break;
	case 1200: /* 1.2 uH */
		FUNC3(regmap, CS35L35_BST_CONV_COEF_1, 0x20);
		FUNC3(regmap, CS35L35_BST_CONV_COEF_2, 0x20);
		FUNC2(regmap, CS35L35_BST_CONV_SW_FREQ,
				   CS35L35_BST_CONV_LBST_MASK, 0x01);

		if (bst_ipk < 0x04)
			FUNC3(regmap, CS35L35_BST_CONV_SLOPE_COMP, 0x1B);
		else
			FUNC3(regmap, CS35L35_BST_CONV_SLOPE_COMP, 0x47);
		break;
	case 1500: /* 1.5uH */
		FUNC3(regmap, CS35L35_BST_CONV_COEF_1, 0x20);
		FUNC3(regmap, CS35L35_BST_CONV_COEF_2, 0x20);
		FUNC2(regmap, CS35L35_BST_CONV_SW_FREQ,
				   CS35L35_BST_CONV_LBST_MASK, 0x02);

		if (bst_ipk < 0x04)
			FUNC3(regmap, CS35L35_BST_CONV_SLOPE_COMP, 0x1B);
		else
			FUNC3(regmap, CS35L35_BST_CONV_SLOPE_COMP, 0x3C);
		break;
	case 2200: /* 2.2uH */
		FUNC3(regmap, CS35L35_BST_CONV_COEF_1, 0x19);
		FUNC3(regmap, CS35L35_BST_CONV_COEF_2, 0x25);
		FUNC2(regmap, CS35L35_BST_CONV_SW_FREQ,
				   CS35L35_BST_CONV_LBST_MASK, 0x03);

		if (bst_ipk < 0x04)
			FUNC3(regmap, CS35L35_BST_CONV_SLOPE_COMP, 0x1B);
		else
			FUNC3(regmap, CS35L35_BST_CONV_SLOPE_COMP, 0x23);
		break;
	default:
		FUNC0(cs35l35->dev, "Invalid Inductor Value %d uH\n",
			inductor);
		return -EINVAL;
	}
	return 0;
}