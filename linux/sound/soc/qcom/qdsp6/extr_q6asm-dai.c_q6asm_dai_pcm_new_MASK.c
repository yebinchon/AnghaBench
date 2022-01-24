#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {struct snd_pcm* pcm; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_substream {int /*<<< orphan*/  dma_buffer; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int buffer_bytes_max; } ;
struct TYPE_3__ {struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 TYPE_2__ q6asm_dai_hardware_playback ; 
 int FUNC1 (int /*<<< orphan*/ ,struct device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_soc_component* FUNC3 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_pcm_substream *psubstream, *csubstream;
	struct snd_soc_component *c = FUNC3(rtd, DRV_NAME);
	struct snd_pcm *pcm = rtd->pcm;
	struct device *dev;
	int size, ret;

	dev = c->dev;
	size = q6asm_dai_hardware_playback.buffer_bytes_max;
	psubstream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
	if (psubstream) {
		ret = FUNC1(SNDRV_DMA_TYPE_DEV, dev, size,
					  &psubstream->dma_buffer);
		if (ret) {
			FUNC0(dev, "Cannot allocate buffer(s)\n");
			return ret;
		}
	}

	csubstream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
	if (csubstream) {
		ret = FUNC1(SNDRV_DMA_TYPE_DEV, dev, size,
					  &csubstream->dma_buffer);
		if (ret) {
			FUNC0(dev, "Cannot allocate buffer(s)\n");
			if (psubstream)
				FUNC2(&psubstream->dma_buffer);
			return ret;
		}
	}

	return 0;
}