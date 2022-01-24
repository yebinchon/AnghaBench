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
struct snd_soc_dai {int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct rt5616_priv {unsigned int sysclk; int sysclk_src; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT5616_GLB_CLK ; 
 int /*<<< orphan*/  RT5616_SCLK_SRC_MASK ; 
 unsigned int RT5616_SCLK_SRC_MCLK ; 
 unsigned int RT5616_SCLK_SRC_PLL1 ; 
#define  RT5616_SCLK_S_MCLK 129 
#define  RT5616_SCLK_S_PLL1 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct rt5616_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai,
				 int clk_id, unsigned int freq, int dir)
{
	struct snd_soc_component *component = dai->component;
	struct rt5616_priv *rt5616 = FUNC2(component);
	unsigned int reg_val = 0;

	if (freq == rt5616->sysclk && clk_id == rt5616->sysclk_src)
		return 0;

	switch (clk_id) {
	case RT5616_SCLK_S_MCLK:
		reg_val |= RT5616_SCLK_SRC_MCLK;
		break;
	case RT5616_SCLK_S_PLL1:
		reg_val |= RT5616_SCLK_SRC_PLL1;
		break;
	default:
		FUNC1(component->dev, "Invalid clock id (%d)\n", clk_id);
		return -EINVAL;
	}

	FUNC3(component, RT5616_GLB_CLK,
			    RT5616_SCLK_SRC_MASK, reg_val);
	rt5616->sysclk = freq;
	rt5616->sysclk_src = clk_id;

	FUNC0(dai->dev, "Sysclk is %dHz and clock id is %d\n", freq, clk_id);

	return 0;
}