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
typedef  scalar_t__ snd_pcm_format_t ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ; 
 int FUNC0 (struct snd_soc_dai*,int,int) ; 
 scalar_t__ FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
					struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	snd_pcm_format_t format = FUNC1(params);
	int rate = FUNC2(params);
	int bclk_ratio;

	if (format == SNDRV_PCM_FORMAT_S16_LE)
		bclk_ratio = 32;
	else
		bclk_ratio = 50;

	return FUNC0(codec_dai, rate, bclk_ratio);
}