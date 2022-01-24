#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int dummy; } ;
struct aic3x_priv {int power; int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; int /*<<< orphan*/  gpio_reset; } ;
struct TYPE_2__ {unsigned int def; } ;

/* Variables and functions */
 size_t AIC3X_PLL_PROGC_REG ; 
 size_t AIC3X_PLL_PROGD_REG ; 
 size_t AIC3X_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int SOFT_RESET ; 
 TYPE_1__* aic3x_reg ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aic3x_priv* FUNC9 (struct snd_soc_component*) ; 
 unsigned int FUNC10 (struct snd_soc_component*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_component*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct snd_soc_component *component, int power)
{
	struct aic3x_priv *aic3x = FUNC9(component);
	unsigned int pll_c, pll_d;
	int ret;

	if (power) {
		ret = FUNC8(FUNC0(aic3x->supplies),
					    aic3x->supplies);
		if (ret)
			goto out;
		aic3x->power = 1;

		if (FUNC1(aic3x->gpio_reset)) {
			FUNC12(1);
			FUNC2(aic3x->gpio_reset, 1);
		}

		/* Sync reg_cache with the hardware */
		FUNC4(aic3x->regmap, false);
		FUNC6(aic3x->regmap);

		/* Rewrite paired PLL D registers in case cached sync skipped
		 * writing one of them and thus caused other one also not
		 * being written
		 */
		pll_c = FUNC10(component, AIC3X_PLL_PROGC_REG);
		pll_d = FUNC10(component, AIC3X_PLL_PROGD_REG);
		if (pll_c == aic3x_reg[AIC3X_PLL_PROGC_REG].def ||
			pll_d == aic3x_reg[AIC3X_PLL_PROGD_REG].def) {
			FUNC11(component, AIC3X_PLL_PROGC_REG, pll_c);
			FUNC11(component, AIC3X_PLL_PROGD_REG, pll_d);
		}

		/*
		 * Delay is needed to reduce pop-noise after syncing back the
		 * registers
		 */
		FUNC3(50);
	} else {
		/*
		 * Do soft reset to this codec instance in order to clear
		 * possible VDD leakage currents in case the supply regulators
		 * remain on
		 */
		FUNC11(component, AIC3X_RESET, SOFT_RESET);
		FUNC5(aic3x->regmap);
		aic3x->power = 0;
		/* HW writes are needless when bias is off */
		FUNC4(aic3x->regmap, true);
		ret = FUNC7(FUNC0(aic3x->supplies),
					     aic3x->supplies);
	}
out:
	return ret;
}