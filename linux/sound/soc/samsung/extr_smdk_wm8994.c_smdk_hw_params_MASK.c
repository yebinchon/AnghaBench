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
struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMDK_WM8994_FREQ ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  WM8994_FLL1 ; 
 int /*<<< orphan*/  WM8994_FLL_SRC_MCLK1 ; 
 int /*<<< orphan*/  WM8994_SYSCLK_FLL1 ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	unsigned int pll_out;
	int ret;

	/* AIF1CLK should be >=3MHz for optimal performance */
	if (FUNC1(params) == 24)
		pll_out = FUNC0(params) * 384;
	else if (FUNC0(params) == 8000 || FUNC0(params) == 11025)
		pll_out = FUNC0(params) * 512;
	else
		pll_out = FUNC0(params) * 256;

	ret = FUNC2(codec_dai, WM8994_FLL1, WM8994_FLL_SRC_MCLK1,
					SMDK_WM8994_FREQ, pll_out);
	if (ret < 0)
		return ret;

	ret = FUNC3(codec_dai, WM8994_SYSCLK_FLL1,
					pll_out, SND_SOC_CLOCK_IN);
	if (ret < 0)
		return ret;

	return 0;
}