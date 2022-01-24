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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5640_PLL1_S_BCLK1 ; 
 int /*<<< orphan*/  RT5640_SCLK_S_PLL1 ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	int ret;

	ret = FUNC3(codec_dai, RT5640_SCLK_S_PLL1,
				     FUNC1(params) * 256,
				     SND_SOC_CLOCK_IN);
	if (ret < 0) {
		FUNC0(codec_dai->dev, "can't set codec clock %d\n", ret);
		return ret;
	}
	ret = FUNC2(codec_dai, 0, RT5640_PLL1_S_BCLK1,
				  FUNC1(params) * 64,
				  FUNC1(params) * 256);
	if (ret < 0) {
		FUNC0(codec_dai->dev, "can't set codec pll: %d\n", ret);
		return ret;
	}
	return 0;
}