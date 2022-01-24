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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; struct snd_pcm* pcm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int /*<<< orphan*/  dma_buffer; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct TYPE_4__ {size_t buffer_bytes_max; } ;
struct TYPE_3__ {struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ lpass_platform_pcm_hardware ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_soc_component* FUNC3 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_pcm_runtime *soc_runtime)
{
	struct snd_pcm *pcm = soc_runtime->pcm;
	struct snd_pcm_substream *psubstream, *csubstream;
	struct snd_soc_component *component = FUNC3(soc_runtime, DRV_NAME);
	int ret = -EINVAL;
	size_t size = lpass_platform_pcm_hardware.buffer_bytes_max;

	psubstream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
	if (psubstream) {
		ret = FUNC1(SNDRV_DMA_TYPE_DEV,
					component->dev,
					size, &psubstream->dma_buffer);
		if (ret) {
			FUNC0(soc_runtime->dev, "Cannot allocate buffer(s)\n");
			return ret;
		}
	}

	csubstream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
	if (csubstream) {
		ret = FUNC1(SNDRV_DMA_TYPE_DEV,
					component->dev,
					size, &csubstream->dma_buffer);
		if (ret) {
			FUNC0(soc_runtime->dev, "Cannot allocate buffer(s)\n");
			if (psubstream)
				FUNC2(&psubstream->dma_buffer);
			return ret;
		}

	}

	return 0;
}