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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct img_spdif_in {int dummy; } ;
typedef  scalar_t__ snd_pcm_format_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_FORMAT_S32_LE ; 
 int FUNC0 (struct img_spdif_in*,unsigned int) ; 
 unsigned int FUNC1 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 struct img_spdif_in* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct img_spdif_in *spdif = FUNC4(dai);
	unsigned int rate, channels;
	snd_pcm_format_t format;

	rate = FUNC3(params);
	channels = FUNC1(params);
	format = FUNC2(params);

	if (format != SNDRV_PCM_FORMAT_S32_LE)
		return -EINVAL;

	if (channels != 2)
		return -EINVAL;

	return FUNC0(spdif, rate);
}