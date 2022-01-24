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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CZ_PLAT_CLK ; 
 int /*<<< orphan*/  RT5645_PLL1_S_MCLK ; 
 int /*<<< orphan*/  RT5645_SCLK_S_PLL1 ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params)
{
	int ret = 0;
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;

	ret = FUNC2(codec_dai, 0, RT5645_PLL1_S_MCLK,
				  CZ_PLAT_CLK, FUNC1(params) * 512);
	if (ret < 0) {
		FUNC0(rtd->dev, "can't set codec pll: %d\n", ret);
		return ret;
	}

	ret = FUNC3(codec_dai, RT5645_SCLK_S_PLL1,
				FUNC1(params) * 512, SND_SOC_CLOCK_OUT);
	if (ret < 0) {
		FUNC0(rtd->dev, "can't set codec sysclk: %d\n", ret);
		return ret;
	}

	return ret;
}