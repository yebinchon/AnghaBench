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
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_OUT ; 
 unsigned int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	int err;
	unsigned int mclk_rate;
	unsigned int rate = FUNC0(params);

	/*
	 * According to CS4271 datasheet we use MCLK/LRCK=256 for
	 * rates below 50kHz and 128 for higher sample rates
	 */
	if (rate < 50000)
		mclk_rate = rate * 64 * 4;
	else
		mclk_rate = rate * 64 * 2;

	err = FUNC1(codec_dai, 0, mclk_rate,
				     SND_SOC_CLOCK_IN);
	if (err)
		return err;

	return FUNC1(cpu_dai, 0, mclk_rate,
				      SND_SOC_CLOCK_OUT);
}