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
struct snd_soc_dai {TYPE_1__* component; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BYT_RT5651_MCLK_25MHZ ; 
 int BYT_RT5651_MCLK_EN ; 
 int RT5651_PLL1_S_BCLK1 ; 
 int RT5651_PLL1_S_MCLK ; 
 int /*<<< orphan*/  RT5651_SCLK_S_PLL1 ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int byt_rt5651_quirk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *codec_dai,
					      int rate, int bclk_ratio)
{
	int clk_id, clk_freq, ret;

	/* Configure the PLL before selecting it */
	if (!(byt_rt5651_quirk & BYT_RT5651_MCLK_EN)) {
		clk_id = RT5651_PLL1_S_BCLK1,
		clk_freq = rate * bclk_ratio;
	} else {
		clk_id = RT5651_PLL1_S_MCLK;
		if (byt_rt5651_quirk & BYT_RT5651_MCLK_25MHZ)
			clk_freq = 25000000;
		else
			clk_freq = 19200000;
	}
	ret = FUNC1(codec_dai, 0, clk_id, clk_freq, rate * 512);
	if (ret < 0) {
		FUNC0(codec_dai->component->dev, "can't set pll: %d\n", ret);
		return ret;
	}

	ret = FUNC2(codec_dai, RT5651_SCLK_S_PLL1,
				     rate * 512, SND_SOC_CLOCK_IN);
	if (ret < 0) {
		FUNC0(codec_dai->component->dev, "can't set clock %d\n", ret);
		return ret;
	}

	return 0;
}