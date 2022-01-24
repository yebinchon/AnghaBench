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
 int /*<<< orphan*/  PXA_SSP_CLK_AUDIO ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_OUT ; 
 int SND_SOC_DAIFMT_CBS_CFS ; 
 int SND_SOC_DAIFMT_DSP_A ; 
 int SND_SOC_DAIFMT_MSB ; 
 int SND_SOC_DAIFMT_NB_IF ; 
 int SND_SOC_DAIFMT_NB_NF ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_dai*,int) ; 
 int FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_dai*,int,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				       struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	unsigned int width;
	int ret = 0;

	/* set codec DAI configuration */
	ret = FUNC2(codec_dai, SND_SOC_DAIFMT_MSB |
			SND_SOC_DAIFMT_NB_NF | SND_SOC_DAIFMT_CBS_CFS);
	if (ret < 0)
		return ret;

	/* set cpu DAI configuration */
	ret = FUNC2(cpu_dai, SND_SOC_DAIFMT_DSP_A |
			SND_SOC_DAIFMT_NB_IF | SND_SOC_DAIFMT_CBS_CFS);
	if (ret < 0)
		return ret;

	width = FUNC1(FUNC0(params));
	ret = FUNC4(cpu_dai, 1, 0, 1, width);
	if (ret < 0)
		return ret;

	/* set audio clock as clock source */
	ret = FUNC3(cpu_dai, PXA_SSP_CLK_AUDIO, 0,
			SND_SOC_CLOCK_OUT);
	if (ret < 0)
		return ret;

	return 0;
}