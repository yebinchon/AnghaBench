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
struct da7213_priv {int clk_src; unsigned int mclk_rate; scalar_t__ mclk; } ;

/* Variables and functions */
#define  DA7213_CLKSRC_MCLK 129 
#define  DA7213_CLKSRC_MCLK_SQR 128 
 int /*<<< orphan*/  DA7213_PLL_CTRL ; 
 int /*<<< orphan*/  DA7213_PLL_MCLK_SQR_EN ; 
 int EINVAL ; 
 unsigned int FUNC0 (scalar_t__,unsigned int) ; 
 int FUNC1 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct da7213_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *codec_dai,
				 int clk_id, unsigned int freq, int dir)
{
	struct snd_soc_component *component = codec_dai->component;
	struct da7213_priv *da7213 = FUNC3(component);
	int ret = 0;

	if ((da7213->clk_src == clk_id) && (da7213->mclk_rate == freq))
		return 0;

	if (((freq < 5000000) && (freq != 32768)) || (freq > 54000000)) {
		FUNC2(codec_dai->dev, "Unsupported MCLK value %d\n",
			freq);
		return -EINVAL;
	}

	switch (clk_id) {
	case DA7213_CLKSRC_MCLK:
		FUNC4(component, DA7213_PLL_CTRL,
				    DA7213_PLL_MCLK_SQR_EN, 0);
		break;
	case DA7213_CLKSRC_MCLK_SQR:
		FUNC4(component, DA7213_PLL_CTRL,
				    DA7213_PLL_MCLK_SQR_EN,
				    DA7213_PLL_MCLK_SQR_EN);
		break;
	default:
		FUNC2(codec_dai->dev, "Unknown clock source %d\n", clk_id);
		return -EINVAL;
	}

	da7213->clk_src = clk_id;

	if (da7213->mclk) {
		freq = FUNC0(da7213->mclk, freq);
		ret = FUNC1(da7213->mclk, freq);
		if (ret) {
			FUNC2(codec_dai->dev, "Failed to set clock rate %d\n",
				freq);
			return ret;
		}
	}

	da7213->mclk_rate = freq;

	return 0;
}