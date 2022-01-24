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
struct mchp_i2s_mcc_dev {unsigned int sysclk; struct clk* gclk; struct clk* pclk; int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned long) ; 
 unsigned int FUNC2 (unsigned long) ; 
 unsigned int MCHP_I2SMCC_MRA_SRCCLK_GCLK ; 
 unsigned int MCHP_I2SMCC_MRA_SRCCLK_PCLK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned long FUNC5 (unsigned int,unsigned int) ; 
 int FUNC6 (struct clk*,unsigned long,struct clk**,unsigned long*,unsigned long*) ; 

__attribute__((used)) static int FUNC7(struct mchp_i2s_mcc_dev *dev,
				    unsigned int bclk, unsigned int *mra,
				    unsigned long *best_rate)
{
	unsigned long clk_rate;
	unsigned long lcm_rate;
	unsigned long best_diff_rate = ~0;
	unsigned int sysclk;
	struct clk *best_clk = NULL;
	int ret;

	/* For code simplification */
	if (!dev->sysclk)
		sysclk = bclk;
	else
		sysclk = dev->sysclk;

	/*
	 * MCLK is Selected CLK / (2 * IMCKDIV),
	 * BCLK is Selected CLK / (2 * ISCKDIV);
	 * if IMCKDIV or ISCKDIV are 0, MCLK or BCLK = Selected CLK
	 */
	lcm_rate = FUNC5(sysclk, bclk);
	if ((lcm_rate / sysclk % 2 == 1 && lcm_rate / sysclk > 2) ||
	    (lcm_rate / bclk % 2 == 1 && lcm_rate / bclk > 2))
		lcm_rate *= 2;

	for (clk_rate = lcm_rate;
	     (clk_rate == sysclk || clk_rate / (sysclk * 2) <= FUNC0(5, 0)) &&
	     (clk_rate == bclk || clk_rate / (bclk * 2) <= FUNC0(5, 0));
	     clk_rate += lcm_rate) {
		ret = FUNC6(dev->gclk, clk_rate,
						     &best_clk, best_rate,
						     &best_diff_rate);
		if (ret) {
			FUNC4(dev->dev, "gclk error for rate %lu: %d",
				clk_rate, ret);
		} else {
			if (!best_diff_rate) {
				FUNC3(dev->dev, "found perfect rate on gclk: %lu\n",
					clk_rate);
				break;
			}
		}

		ret = FUNC6(dev->pclk, clk_rate,
						     &best_clk, best_rate,
						     &best_diff_rate);
		if (ret) {
			FUNC4(dev->dev, "pclk error for rate %lu: %d",
				clk_rate, ret);
		} else {
			if (!best_diff_rate) {
				FUNC3(dev->dev, "found perfect rate on pclk: %lu\n",
					clk_rate);
				break;
			}
		}
	}

	/* check if clocks returned only errors */
	if (!best_clk) {
		FUNC4(dev->dev, "unable to change rate to clocks\n");
		return -EINVAL;
	}

	FUNC3(dev->dev, "source CLK is %s with rate %lu, diff %lu\n",
		best_clk == dev->pclk ? "pclk" : "gclk",
		*best_rate, best_diff_rate);

	/* Configure divisors */
	if (dev->sysclk)
		*mra |= FUNC1(*best_rate / (2 * sysclk));
	*mra |= FUNC2(*best_rate / (2 * bclk));

	if (best_clk == dev->gclk)
		*mra |= MCHP_I2SMCC_MRA_SRCCLK_GCLK;
	else
		*mra |= MCHP_I2SMCC_MRA_SRCCLK_PCLK;

	return 0;
}