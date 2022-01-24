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
struct max98090_priv {scalar_t__ sysclk; int lrclk; int /*<<< orphan*/  bclk; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  M98090_FREQ_MASK ; 
 int M98090_FREQ_SHIFT ; 
 int M98090_MAS_MASK ; 
 int /*<<< orphan*/  M98090_REG_CLOCK_MODE ; 
 int /*<<< orphan*/  M98090_REG_CLOCK_RATIO_MI_LSB ; 
 int /*<<< orphan*/  M98090_REG_CLOCK_RATIO_MI_MSB ; 
 int /*<<< orphan*/  M98090_REG_CLOCK_RATIO_NI_LSB ; 
 int /*<<< orphan*/  M98090_REG_CLOCK_RATIO_NI_MSB ; 
 int /*<<< orphan*/  M98090_REG_MASTER_MODE ; 
 int /*<<< orphan*/  M98090_USE_M1_MASK ; 
 int M98090_USE_M1_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long,unsigned long long) ; 
 int* lrclk_rates ; 
 int* mi_value ; 
 int* ni_value ; 
 scalar_t__* pclk_rates ; 
 struct max98090_priv* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned long long) ; 
 int* user_lrclk_rates ; 
 scalar_t__* user_pclk_rates ; 

__attribute__((used)) static void FUNC9(struct snd_soc_component *component)
{
	struct max98090_priv *max98090 = FUNC5(component);
	unsigned long long ni;
	int i;

	if (!max98090->sysclk) {
		FUNC2(component->dev, "No SYSCLK configured\n");
		return;
	}

	if (!max98090->bclk || !max98090->lrclk) {
		FUNC2(component->dev, "No audio clocks configured\n");
		return;
	}

	/* Skip configuration when operating as slave */
	if (!(FUNC6(component, M98090_REG_MASTER_MODE) &
		M98090_MAS_MASK)) {
		return;
	}

	/* Check for supported PCLK to LRCLK ratios */
	for (i = 0; i < FUNC0(pclk_rates); i++) {
		if ((pclk_rates[i] == max98090->sysclk) &&
			(lrclk_rates[i] == max98090->lrclk)) {
			FUNC1(component->dev,
				"Found supported PCLK to LRCLK rates 0x%x\n",
				i + 0x8);

			FUNC7(component, M98090_REG_CLOCK_MODE,
				M98090_FREQ_MASK,
				(i + 0x8) << M98090_FREQ_SHIFT);
			FUNC7(component, M98090_REG_CLOCK_MODE,
				M98090_USE_M1_MASK, 0);
			return;
		}
	}

	/* Check for user calculated MI and NI ratios */
	for (i = 0; i < FUNC0(user_pclk_rates); i++) {
		if ((user_pclk_rates[i] == max98090->sysclk) &&
			(user_lrclk_rates[i] == max98090->lrclk)) {
			FUNC1(component->dev,
				"Found user supported PCLK to LRCLK rates\n");
			FUNC1(component->dev, "i %d ni %lld mi %lld\n",
				i, ni_value[i], mi_value[i]);

			FUNC7(component, M98090_REG_CLOCK_MODE,
				M98090_FREQ_MASK, 0);
			FUNC7(component, M98090_REG_CLOCK_MODE,
				M98090_USE_M1_MASK,
					1 << M98090_USE_M1_SHIFT);

			FUNC8(component, M98090_REG_CLOCK_RATIO_NI_MSB,
				(ni_value[i] >> 8) & 0x7F);
			FUNC8(component, M98090_REG_CLOCK_RATIO_NI_LSB,
				ni_value[i] & 0xFF);
			FUNC8(component, M98090_REG_CLOCK_RATIO_MI_MSB,
				(mi_value[i] >> 8) & 0x7F);
			FUNC8(component, M98090_REG_CLOCK_RATIO_MI_LSB,
				mi_value[i] & 0xFF);

			return;
		}
	}

	/*
	 * Calculate based on MI = 65536 (not as good as either method above)
	 */
	FUNC7(component, M98090_REG_CLOCK_MODE,
		M98090_FREQ_MASK, 0);
	FUNC7(component, M98090_REG_CLOCK_MODE,
		M98090_USE_M1_MASK, 0);

	/*
	 * Configure NI when operating as master
	 * Note: There is a small, but significant audio quality improvement
	 * by calculating ni and mi.
	 */
	ni = 65536ULL * (max98090->lrclk < 50000 ? 96ULL : 48ULL)
			* (unsigned long long int)max98090->lrclk;
	FUNC4(ni, (unsigned long long int)max98090->sysclk);
	FUNC3(component->dev, "No better method found\n");
	FUNC3(component->dev, "Calculating ni %lld with mi 65536\n", ni);
	FUNC8(component, M98090_REG_CLOCK_RATIO_NI_MSB,
		(ni >> 8) & 0x7F);
	FUNC8(component, M98090_REG_CLOCK_RATIO_NI_LSB, ni & 0xFF);
}