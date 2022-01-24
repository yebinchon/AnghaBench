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
struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 unsigned int S3C2410_IISMOD_32FS ; 
 int /*<<< orphan*/  S3C24XX_DIV_MCLK ; 
 int /*<<< orphan*/  S3C24XX_DIV_PRESCALER ; 
 unsigned int FUNC0 (int,int) ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  WM8753_BCLKDIV ; 
 unsigned int WM8753_BCLK_DIV_16 ; 
 unsigned int WM8753_BCLK_DIV_2 ; 
 unsigned int WM8753_BCLK_DIV_4 ; 
 unsigned int WM8753_BCLK_DIV_8 ; 
 int /*<<< orphan*/  WM8753_MCLK ; 
 int /*<<< orphan*/  WM8753_PLL1 ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 unsigned long FUNC2 () ; 
 int FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned int) ; 
 int FUNC5 (struct snd_soc_dai*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	unsigned int pll_out = 0, bclk = 0;
	int ret = 0;
	unsigned long iis_clkrate;

	iis_clkrate = FUNC2();

	switch (FUNC1(params)) {
	case 8000:
	case 16000:
		pll_out = 12288000;
		break;
	case 48000:
		bclk = WM8753_BCLK_DIV_4;
		pll_out = 12288000;
		break;
	case 96000:
		bclk = WM8753_BCLK_DIV_2;
		pll_out = 12288000;
		break;
	case 11025:
		bclk = WM8753_BCLK_DIV_16;
		pll_out = 11289600;
		break;
	case 22050:
		bclk = WM8753_BCLK_DIV_8;
		pll_out = 11289600;
		break;
	case 44100:
		bclk = WM8753_BCLK_DIV_4;
		pll_out = 11289600;
		break;
	case 88200:
		bclk = WM8753_BCLK_DIV_2;
		pll_out = 11289600;
		break;
	}

	/* set the codec system clock for DAC and ADC */
	ret = FUNC5(codec_dai, WM8753_MCLK, pll_out,
		SND_SOC_CLOCK_IN);
	if (ret < 0)
		return ret;

	/* set MCLK division for sample rate */
	ret = FUNC3(cpu_dai, S3C24XX_DIV_MCLK,
		S3C2410_IISMOD_32FS);
	if (ret < 0)
		return ret;

	/* set codec BCLK division for sample rate */
	ret = FUNC3(codec_dai, WM8753_BCLKDIV, bclk);
	if (ret < 0)
		return ret;

	/* set prescaler division for sample rate */
	ret = FUNC3(cpu_dai, S3C24XX_DIV_PRESCALER,
		FUNC0(4, 4));
	if (ret < 0)
		return ret;

	/* codec PLL input is PCLK/4 */
	ret = FUNC4(codec_dai, WM8753_PLL1, 0,
		iis_clkrate / 4, pll_out);
	if (ret < 0)
		return ret;

	return 0;
}