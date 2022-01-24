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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct adau1701 {unsigned int pll_clkdiv; int /*<<< orphan*/  regmap; int /*<<< orphan*/  sigmadsp; int /*<<< orphan*/  gpio_nreset; int /*<<< orphan*/ * gpio_pll_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU1701_DACSET ; 
 int /*<<< orphan*/  ADAU1701_DACSET_DACINIT ; 
 int /*<<< orphan*/  ADAU1701_DSPCTRL ; 
 int /*<<< orphan*/  ADAU1701_DSPCTRL_CR ; 
 unsigned int ADAU1707_CLKDIV_UNSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 struct adau1701* FUNC9 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component, unsigned int clkdiv,
	unsigned int rate)
{
	struct adau1701 *adau1701 = FUNC9(component);
	int ret;

	FUNC7(adau1701->sigmadsp);

	if (clkdiv != ADAU1707_CLKDIV_UNSET &&
	    FUNC1(adau1701->gpio_pll_mode[0]) &&
	    FUNC1(adau1701->gpio_pll_mode[1])) {
		switch (clkdiv) {
		case 64:
			FUNC2(adau1701->gpio_pll_mode[0], 0);
			FUNC2(adau1701->gpio_pll_mode[1], 0);
			break;
		case 256:
			FUNC2(adau1701->gpio_pll_mode[0], 0);
			FUNC2(adau1701->gpio_pll_mode[1], 1);
			break;
		case 384:
			FUNC2(adau1701->gpio_pll_mode[0], 1);
			FUNC2(adau1701->gpio_pll_mode[1], 0);
			break;
		case 0:	/* fallback */
		case 512:
			FUNC2(adau1701->gpio_pll_mode[0], 1);
			FUNC2(adau1701->gpio_pll_mode[1], 1);
			break;
		}
	}

	adau1701->pll_clkdiv = clkdiv;

	if (FUNC1(adau1701->gpio_nreset)) {
		FUNC2(adau1701->gpio_nreset, 0);
		/* minimum reset time is 20ns */
		FUNC10(1);
		FUNC2(adau1701->gpio_nreset, 1);
		/* power-up time may be as long as 85ms */
		FUNC3(85);
	}

	/*
	 * Postpone the firmware download to a point in time when we
	 * know the correct PLL setup
	 */
	if (clkdiv != ADAU1707_CLKDIV_UNSET) {
		ret = FUNC8(adau1701->sigmadsp, rate);
		if (ret) {
			FUNC0(component->dev, "Failed to load firmware\n");
			return ret;
		}
	}

	FUNC6(adau1701->regmap, ADAU1701_DACSET, ADAU1701_DACSET_DACINIT);
	FUNC6(adau1701->regmap, ADAU1701_DSPCTRL, ADAU1701_DSPCTRL_CR);

	FUNC4(adau1701->regmap);
	FUNC5(adau1701->regmap);

	return 0;
}