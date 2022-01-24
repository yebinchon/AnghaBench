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
 int EINVAL ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  WM8753_PCMCLK ; 
 int /*<<< orphan*/  WM8753_PCMDIV ; 
 unsigned int WM8753_PCM_DIV_6 ; 
 int /*<<< orphan*/  WM8753_PLL2 ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 unsigned long FUNC2 () ; 
 int FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int) ; 
 int FUNC5 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	unsigned int pcmdiv = 0;
	int ret = 0;
	unsigned long iis_clkrate;

	iis_clkrate = FUNC2();

	if (FUNC1(params) != 8000)
		return -EINVAL;
	if (FUNC0(params) != 1)
		return -EINVAL;

	pcmdiv = WM8753_PCM_DIV_6; /* 2.048 MHz */

	/* set the codec system clock for DAC and ADC */
	ret = FUNC5(codec_dai, WM8753_PCMCLK, 12288000,
		SND_SOC_CLOCK_IN);
	if (ret < 0)
		return ret;

	/* set codec PCM division for sample rate */
	ret = FUNC3(codec_dai, WM8753_PCMDIV, pcmdiv);
	if (ret < 0)
		return ret;

	/* configure and enable PLL for 12.288MHz output */
	ret = FUNC4(codec_dai, WM8753_PLL2, 0,
		iis_clkrate / 4, 12288000);
	if (ret < 0)
		return ret;

	return 0;
}