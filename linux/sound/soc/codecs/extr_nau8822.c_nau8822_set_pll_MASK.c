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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct nau8822_pll {int pll_int; int pll_frac; int mclk_scaler; scalar_t__ pre_factor; } ;
struct nau8822 {struct nau8822_pll pll; } ;

/* Variables and functions */
 int NAU8822_CLKM_MASK ; 
 int NAU8822_CLKM_PLL ; 
 int NAU8822_MCLKSEL_MASK ; 
 int NAU8822_MCLKSEL_SFT ; 
 int NAU8822_PLLK1_MASK ; 
 int NAU8822_PLLK1_SFT ; 
 int NAU8822_PLLK2_MASK ; 
 int NAU8822_PLLK2_SFT ; 
 int NAU8822_PLLK3_MASK ; 
 int NAU8822_PLLMCLK_DIV2 ; 
 int NAU8822_PLLN_MASK ; 
 int /*<<< orphan*/  NAU8822_REG_CLOCKING ; 
 int /*<<< orphan*/  NAU8822_REG_PLL_K1 ; 
 int /*<<< orphan*/  NAU8822_REG_PLL_K2 ; 
 int /*<<< orphan*/  NAU8822_REG_PLL_K3 ; 
 int /*<<< orphan*/  NAU8822_REG_PLL_N ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,scalar_t__) ; 
 int FUNC2 (unsigned int,int,struct nau8822_pll*) ; 
 struct nau8822* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dai *dai, int pll_id, int source,
				unsigned int freq_in, unsigned int freq_out)
{
	struct snd_soc_component *component = dai->component;
	struct nau8822 *nau8822 = FUNC3(component);
	struct nau8822_pll *pll_param = &nau8822->pll;
	int ret, fs;

	fs = freq_out / 256;

	ret = FUNC2(freq_in, fs, pll_param);
	if (ret < 0) {
		FUNC0(component->dev, "Unsupported input clock %d\n",
			freq_in);
		return ret;
	}

	FUNC1(component->dev,
		"pll_int=%x pll_frac=%x mclk_scaler=%x pre_factor=%x\n",
		pll_param->pll_int, pll_param->pll_frac,
		pll_param->mclk_scaler, pll_param->pre_factor);

	FUNC4(component,
		NAU8822_REG_PLL_N, NAU8822_PLLMCLK_DIV2 | NAU8822_PLLN_MASK,
		(pll_param->pre_factor ? NAU8822_PLLMCLK_DIV2 : 0) |
		pll_param->pll_int);
	FUNC5(component,
		NAU8822_REG_PLL_K1, (pll_param->pll_frac >> NAU8822_PLLK1_SFT) &
		NAU8822_PLLK1_MASK);
	FUNC5(component,
		NAU8822_REG_PLL_K2, (pll_param->pll_frac >> NAU8822_PLLK2_SFT) &
		NAU8822_PLLK2_MASK);
	FUNC5(component,
		NAU8822_REG_PLL_K3, pll_param->pll_frac & NAU8822_PLLK3_MASK);
	FUNC4(component,
		NAU8822_REG_CLOCKING, NAU8822_MCLKSEL_MASK,
		pll_param->mclk_scaler << NAU8822_MCLKSEL_SFT);
	FUNC4(component,
		NAU8822_REG_CLOCKING, NAU8822_CLKM_MASK, NAU8822_CLKM_PLL);

	return 0;
}