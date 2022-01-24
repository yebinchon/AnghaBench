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
struct rt5514_priv {unsigned int pll_in; unsigned int pll_out; int pll_src; int /*<<< orphan*/  regmap; } ;
struct rl6231_pll_code {int m_bp; int m_code; int n_code; int k_code; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT5514_ANA_CTRL_PLL1_1 ; 
 int /*<<< orphan*/  RT5514_ANA_CTRL_PLL1_2 ; 
 int /*<<< orphan*/  RT5514_CLK_CTRL2 ; 
 int /*<<< orphan*/  RT5514_CLK_SYS_PRE_SEL_MASK ; 
 int RT5514_CLK_SYS_PRE_SEL_MCLK ; 
#define  RT5514_PLL1_S_BCLK 129 
#define  RT5514_PLL1_S_MCLK 128 
 int /*<<< orphan*/  RT5514_PLL_1_SEL_MASK ; 
 int RT5514_PLL_1_SEL_MCLK ; 
 int RT5514_PLL_1_SEL_SCLK ; 
 int RT5514_PLL_K_SFT ; 
 int /*<<< orphan*/  RT5514_PLL_M_BP ; 
 int RT5514_PLL_M_BP_SFT ; 
 int RT5514_PLL_M_SFT ; 
 int RT5514_PLL_N_SFT ; 
 int /*<<< orphan*/  RT5514_PLL_SOURCE_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (unsigned int,unsigned int,struct rl6231_pll_code*) ; 
 struct rt5514_priv* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dai *dai, int pll_id, int source,
			unsigned int freq_in, unsigned int freq_out)
{
	struct snd_soc_component *component = dai->component;
	struct rt5514_priv *rt5514 = FUNC5(component);
	struct rl6231_pll_code pll_code;
	int ret;

	if (!freq_in || !freq_out) {
		FUNC0(component->dev, "PLL disabled\n");

		rt5514->pll_in = 0;
		rt5514->pll_out = 0;
		FUNC2(rt5514->regmap, RT5514_CLK_CTRL2,
			RT5514_CLK_SYS_PRE_SEL_MASK,
			RT5514_CLK_SYS_PRE_SEL_MCLK);

		return 0;
	}

	if (source == rt5514->pll_src && freq_in == rt5514->pll_in &&
	    freq_out == rt5514->pll_out)
		return 0;

	switch (source) {
	case RT5514_PLL1_S_MCLK:
		FUNC2(rt5514->regmap, RT5514_PLL_SOURCE_CTRL,
			RT5514_PLL_1_SEL_MASK, RT5514_PLL_1_SEL_MCLK);
		break;

	case RT5514_PLL1_S_BCLK:
		FUNC2(rt5514->regmap, RT5514_PLL_SOURCE_CTRL,
			RT5514_PLL_1_SEL_MASK, RT5514_PLL_1_SEL_SCLK);
		break;

	default:
		FUNC1(component->dev, "Unknown PLL source %d\n", source);
		return -EINVAL;
	}

	ret = FUNC4(freq_in, freq_out, &pll_code);
	if (ret < 0) {
		FUNC1(component->dev, "Unsupport input clock %d\n", freq_in);
		return ret;
	}

	FUNC0(component->dev, "bypass=%d m=%d n=%d k=%d\n",
		pll_code.m_bp, (pll_code.m_bp ? 0 : pll_code.m_code),
		pll_code.n_code, pll_code.k_code);

	FUNC3(rt5514->regmap, RT5514_ANA_CTRL_PLL1_1,
		pll_code.k_code << RT5514_PLL_K_SFT |
		pll_code.n_code << RT5514_PLL_N_SFT |
		(pll_code.m_bp ? 0 : pll_code.m_code) << RT5514_PLL_M_SFT);
	FUNC2(rt5514->regmap, RT5514_ANA_CTRL_PLL1_2,
		RT5514_PLL_M_BP, pll_code.m_bp << RT5514_PLL_M_BP_SFT);

	rt5514->pll_in = freq_in;
	rt5514->pll_out = freq_out;
	rt5514->pll_src = source;

	return 0;
}