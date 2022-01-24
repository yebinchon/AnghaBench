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
typedef  union dw_i2s_snd_dma_data {int dummy; } dw_i2s_snd_dma_data ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct dw_i2s_dev {int capability; union dw_i2s_snd_dma_data capture_dma_data; union dw_i2s_snd_dma_data play_dma_data; } ;

/* Variables and functions */
 int DWC_I2S_PLAY ; 
 int DWC_I2S_RECORD ; 
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 struct dw_i2s_dev* FUNC0 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,struct snd_pcm_substream*,void*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
		struct snd_soc_dai *cpu_dai)
{
	struct dw_i2s_dev *dev = FUNC0(cpu_dai);
	union dw_i2s_snd_dma_data *dma_data = NULL;

	if (!(dev->capability & DWC_I2S_RECORD) &&
			(substream->stream == SNDRV_PCM_STREAM_CAPTURE))
		return -EINVAL;

	if (!(dev->capability & DWC_I2S_PLAY) &&
			(substream->stream == SNDRV_PCM_STREAM_PLAYBACK))
		return -EINVAL;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		dma_data = &dev->play_dma_data;
	else if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
		dma_data = &dev->capture_dma_data;

	FUNC1(cpu_dai, substream, (void *)dma_data);

	return 0;
}