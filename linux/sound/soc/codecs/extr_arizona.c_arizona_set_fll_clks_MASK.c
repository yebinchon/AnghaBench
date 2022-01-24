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
struct clk {int dummy; } ;
struct arizona_fll {struct arizona* arizona; } ;
struct arizona {struct clk** mclk; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int ARIZONA_FLL1_CLK_REF_SRC_MASK ; 
 unsigned int ARIZONA_FLL1_CLK_REF_SRC_SHIFT ; 
#define  ARIZONA_FLL_SRC_MCLK1 129 
#define  ARIZONA_FLL_SRC_MCLK2 128 
 size_t ARIZONA_MCLK1 ; 
 size_t ARIZONA_MCLK2 ; 
 int /*<<< orphan*/  FUNC0 (struct arizona_fll*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct arizona_fll *fll, int base, bool ena)
{
	struct arizona *arizona = fll->arizona;
	unsigned int val;
	struct clk *clk;
	int ret;

	ret = FUNC3(arizona->regmap, base + 6, &val);
	if (ret != 0) {
		FUNC0(fll, "Failed to read current source: %d\n",
				ret);
		return ret;
	}

	val &= ARIZONA_FLL1_CLK_REF_SRC_MASK;
	val >>= ARIZONA_FLL1_CLK_REF_SRC_SHIFT;

	switch (val) {
	case ARIZONA_FLL_SRC_MCLK1:
		clk = arizona->mclk[ARIZONA_MCLK1];
		break;
	case ARIZONA_FLL_SRC_MCLK2:
		clk = arizona->mclk[ARIZONA_MCLK2];
		break;
	default:
		return 0;
	}

	if (ena) {
		return FUNC2(clk);
	} else {
		FUNC1(clk);
		return 0;
	}
}