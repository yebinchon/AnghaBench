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
struct nau8810 {int sysclk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NAU8810_CLKM_MASK ; 
 int NAU8810_CLKM_MCLK ; 
 int /*<<< orphan*/  NAU8810_MCLKSEL_MASK ; 
 int NAU8810_MCLKSEL_SFT ; 
 int /*<<< orphan*/  NAU8810_REG_CLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int* nau8810_mclk_scaler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct nau8810 *nau8810, int rate)
{
	int i, sclk, imclk = rate * 256, div = 0;

	if (!nau8810->sysclk) {
		FUNC2(nau8810->dev, "Make mclk div configuration fail because of invalid system clock\n");
		return -EINVAL;
	}

	/* Configure the master clock prescaler div to make system
	 * clock to approximate the internal master clock (IMCLK);
	 * and large or equal to IMCLK.
	 */
	for (i = 1; i < FUNC0(nau8810_mclk_scaler); i++) {
		sclk = (nau8810->sysclk * 10) /
			nau8810_mclk_scaler[i];
		if (sclk < imclk)
			break;
		div = i;
	}
	FUNC1(nau8810->dev,
		"master clock prescaler %x for fs %d\n", div, rate);

	/* master clock from MCLK and disable PLL */
	FUNC3(nau8810->regmap, NAU8810_REG_CLOCK,
		NAU8810_MCLKSEL_MASK, (div << NAU8810_MCLKSEL_SFT));
	FUNC3(nau8810->regmap, NAU8810_REG_CLOCK,
		NAU8810_CLKM_MASK, NAU8810_CLKM_MCLK);

	return 0;
}