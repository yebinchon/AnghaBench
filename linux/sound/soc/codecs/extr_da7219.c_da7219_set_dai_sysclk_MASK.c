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
struct snd_soc_component {int dummy; } ;
struct da7219_priv {int clk_src; unsigned int mclk_rate; int /*<<< orphan*/  pll_lock; scalar_t__ mclk; } ;

/* Variables and functions */
#define  DA7219_CLKSRC_MCLK 129 
#define  DA7219_CLKSRC_MCLK_SQR 128 
 int /*<<< orphan*/  DA7219_PLL_CTRL ; 
 int /*<<< orphan*/  DA7219_PLL_MCLK_SQR_EN_MASK ; 
 int EINVAL ; 
 unsigned int FUNC0 (scalar_t__,unsigned int) ; 
 int FUNC1 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct da7219_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dai *codec_dai,
				 int clk_id, unsigned int freq, int dir)
{
	struct snd_soc_component *component = codec_dai->component;
	struct da7219_priv *da7219 = FUNC5(component);
	int ret = 0;

	if ((da7219->clk_src == clk_id) && (da7219->mclk_rate == freq))
		return 0;

	if ((freq < 2000000) || (freq > 54000000)) {
		FUNC2(codec_dai->dev, "Unsupported MCLK value %d\n",
			freq);
		return -EINVAL;
	}

	FUNC3(&da7219->pll_lock);

	switch (clk_id) {
	case DA7219_CLKSRC_MCLK_SQR:
		FUNC6(component, DA7219_PLL_CTRL,
				    DA7219_PLL_MCLK_SQR_EN_MASK,
				    DA7219_PLL_MCLK_SQR_EN_MASK);
		break;
	case DA7219_CLKSRC_MCLK:
		FUNC6(component, DA7219_PLL_CTRL,
				    DA7219_PLL_MCLK_SQR_EN_MASK, 0);
		break;
	default:
		FUNC2(codec_dai->dev, "Unknown clock source %d\n", clk_id);
		FUNC4(&da7219->pll_lock);
		return -EINVAL;
	}

	da7219->clk_src = clk_id;

	if (da7219->mclk) {
		freq = FUNC0(da7219->mclk, freq);
		ret = FUNC1(da7219->mclk, freq);
		if (ret) {
			FUNC2(codec_dai->dev, "Failed to set clock rate %d\n",
				freq);
			FUNC4(&da7219->pll_lock);
			return ret;
		}
	}

	da7219->mclk_rate = freq;

	FUNC4(&da7219->pll_lock);

	return 0;
}