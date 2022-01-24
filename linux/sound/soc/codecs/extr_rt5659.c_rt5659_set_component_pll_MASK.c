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
struct rt5659_priv {int pll_src; unsigned int pll_in; unsigned int pll_out; } ;
struct rl6231_pll_code {int m_bp; int m_code; int n_code; int k_code; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT5659_GLB_CLK ; 
 int /*<<< orphan*/  RT5659_PLL1_SRC_BCLK1 ; 
 int /*<<< orphan*/  RT5659_PLL1_SRC_BCLK2 ; 
 int /*<<< orphan*/  RT5659_PLL1_SRC_BCLK3 ; 
 int /*<<< orphan*/  RT5659_PLL1_SRC_MASK ; 
 int /*<<< orphan*/  RT5659_PLL1_SRC_MCLK ; 
#define  RT5659_PLL1_S_BCLK1 131 
#define  RT5659_PLL1_S_BCLK2 130 
#define  RT5659_PLL1_S_BCLK3 129 
#define  RT5659_PLL1_S_MCLK 128 
 int /*<<< orphan*/  RT5659_PLL_CTRL_1 ; 
 int /*<<< orphan*/  RT5659_PLL_CTRL_2 ; 
 int RT5659_PLL_M_BP_SFT ; 
 int RT5659_PLL_M_SFT ; 
 int RT5659_PLL_N_SFT ; 
 int /*<<< orphan*/  RT5659_SCLK_SRC_MASK ; 
 int /*<<< orphan*/  RT5659_SCLK_SRC_MCLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC2 (unsigned int,unsigned int,struct rl6231_pll_code*) ; 
 struct rt5659_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component, int pll_id,
				int source, unsigned int freq_in,
				unsigned int freq_out)
{
	struct rt5659_priv *rt5659 = FUNC3(component);
	struct rl6231_pll_code pll_code;
	int ret;

	if (source == rt5659->pll_src && freq_in == rt5659->pll_in &&
	    freq_out == rt5659->pll_out)
		return 0;

	if (!freq_in || !freq_out) {
		FUNC0(component->dev, "PLL disabled\n");

		rt5659->pll_in = 0;
		rt5659->pll_out = 0;
		FUNC4(component, RT5659_GLB_CLK,
			RT5659_SCLK_SRC_MASK, RT5659_SCLK_SRC_MCLK);
		return 0;
	}

	switch (source) {
	case RT5659_PLL1_S_MCLK:
		FUNC4(component, RT5659_GLB_CLK,
			RT5659_PLL1_SRC_MASK, RT5659_PLL1_SRC_MCLK);
		break;
	case RT5659_PLL1_S_BCLK1:
		FUNC4(component, RT5659_GLB_CLK,
				RT5659_PLL1_SRC_MASK, RT5659_PLL1_SRC_BCLK1);
		break;
	case RT5659_PLL1_S_BCLK2:
		FUNC4(component, RT5659_GLB_CLK,
				RT5659_PLL1_SRC_MASK, RT5659_PLL1_SRC_BCLK2);
		break;
	case RT5659_PLL1_S_BCLK3:
		FUNC4(component, RT5659_GLB_CLK,
				RT5659_PLL1_SRC_MASK, RT5659_PLL1_SRC_BCLK3);
		break;
	default:
		FUNC1(component->dev, "Unknown PLL source %d\n", source);
		return -EINVAL;
	}

	ret = FUNC2(freq_in, freq_out, &pll_code);
	if (ret < 0) {
		FUNC1(component->dev, "Unsupport input clock %d\n", freq_in);
		return ret;
	}

	FUNC0(component->dev, "bypass=%d m=%d n=%d k=%d\n",
		pll_code.m_bp, (pll_code.m_bp ? 0 : pll_code.m_code),
		pll_code.n_code, pll_code.k_code);

	FUNC5(component, RT5659_PLL_CTRL_1,
		pll_code.n_code << RT5659_PLL_N_SFT | pll_code.k_code);
	FUNC5(component, RT5659_PLL_CTRL_2,
		(pll_code.m_bp ? 0 : pll_code.m_code) << RT5659_PLL_M_SFT |
		pll_code.m_bp << RT5659_PLL_M_BP_SFT);

	rt5659->pll_in = freq_in;
	rt5659->pll_out = freq_out;
	rt5659->pll_src = source;

	return 0;
}