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
typedef  int uint8_t ;
struct snd_soc_component {int dummy; } ;
struct adau1373 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  ADAU1373_PLL1 141 
#define  ADAU1373_PLL2 140 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int ADAU1373_PLL_CTRL6_DPLL_BYPASS ; 
#define  ADAU1373_PLL_SRC_BCLK1 139 
#define  ADAU1373_PLL_SRC_BCLK2 138 
#define  ADAU1373_PLL_SRC_BCLK3 137 
#define  ADAU1373_PLL_SRC_GPIO1 136 
#define  ADAU1373_PLL_SRC_GPIO2 135 
#define  ADAU1373_PLL_SRC_GPIO3 134 
#define  ADAU1373_PLL_SRC_GPIO4 133 
#define  ADAU1373_PLL_SRC_LRCLK1 132 
#define  ADAU1373_PLL_SRC_LRCLK2 131 
#define  ADAU1373_PLL_SRC_LRCLK3 130 
#define  ADAU1373_PLL_SRC_MCLK1 129 
#define  ADAU1373_PLL_SRC_MCLK2 128 
 int EINVAL ; 
 int FUNC8 (unsigned int,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct adau1373* FUNC11 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC12(struct snd_soc_component *component, int pll_id,
	int source, unsigned int freq_in, unsigned int freq_out)
{
	struct adau1373 *adau1373 = FUNC11(component);
	unsigned int dpll_div = 0;
	uint8_t pll_regs[5];
	int ret;

	switch (pll_id) {
	case ADAU1373_PLL1:
	case ADAU1373_PLL2:
		break;
	default:
		return -EINVAL;
	}

	switch (source) {
	case ADAU1373_PLL_SRC_BCLK1:
	case ADAU1373_PLL_SRC_BCLK2:
	case ADAU1373_PLL_SRC_BCLK3:
	case ADAU1373_PLL_SRC_LRCLK1:
	case ADAU1373_PLL_SRC_LRCLK2:
	case ADAU1373_PLL_SRC_LRCLK3:
	case ADAU1373_PLL_SRC_MCLK1:
	case ADAU1373_PLL_SRC_MCLK2:
	case ADAU1373_PLL_SRC_GPIO1:
	case ADAU1373_PLL_SRC_GPIO2:
	case ADAU1373_PLL_SRC_GPIO3:
	case ADAU1373_PLL_SRC_GPIO4:
		break;
	default:
		return -EINVAL;
	}

	if (freq_in < 7813 || freq_in > 27000000)
		return -EINVAL;

	if (freq_out < 45158000 || freq_out > 49152000)
		return -EINVAL;

	/* APLL input needs to be >= 8Mhz, so in case freq_in is less we use the
	 * DPLL to get it there. DPLL_out = (DPLL_in / div) * 1024 */
	while (freq_in < 8000000) {
		freq_in *= 2;
		dpll_div++;
	}

	ret = FUNC8(freq_in, freq_out, pll_regs);
	if (ret)
		return -EINVAL;

	if (dpll_div) {
		dpll_div = 11 - dpll_div;
		FUNC9(adau1373->regmap, FUNC7(pll_id),
			ADAU1373_PLL_CTRL6_DPLL_BYPASS, 0);
	} else {
		FUNC9(adau1373->regmap, FUNC7(pll_id),
			ADAU1373_PLL_CTRL6_DPLL_BYPASS,
			ADAU1373_PLL_CTRL6_DPLL_BYPASS);
	}

	FUNC10(adau1373->regmap, FUNC1(pll_id),
		(source << 4) | dpll_div);
	FUNC10(adau1373->regmap, FUNC2(pll_id), pll_regs[0]);
	FUNC10(adau1373->regmap, FUNC3(pll_id), pll_regs[1]);
	FUNC10(adau1373->regmap, FUNC4(pll_id), pll_regs[2]);
	FUNC10(adau1373->regmap, FUNC5(pll_id), pll_regs[3]);
	FUNC10(adau1373->regmap, FUNC6(pll_id), pll_regs[4]);

	/* Set sysclk to pll_rate / 4 */
	FUNC9(adau1373->regmap, FUNC0(pll_id), 0x3f, 0x09);

	return 0;
}