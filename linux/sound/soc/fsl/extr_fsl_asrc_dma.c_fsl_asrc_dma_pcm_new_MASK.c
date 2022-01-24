#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {struct snd_pcm* pcm; TYPE_1__* card; } ;
struct snd_pcm_substream {int /*<<< orphan*/  dma_buffer; } ;
struct snd_pcm {TYPE_3__* streams; TYPE_2__* card; } ;
struct snd_card {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct snd_pcm_substream* substream; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct snd_card* snd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FSL_ASRC_DMABUF_SIZE ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int SNDRV_PCM_STREAM_LAST ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_card *card = rtd->card->snd_card;
	struct snd_pcm_substream *substream;
	struct snd_pcm *pcm = rtd->pcm;
	int ret, i;

	ret = FUNC2(card->dev, FUNC0(32));
	if (ret) {
		FUNC1(card->dev, "failed to set DMA mask\n");
		return ret;
	}

	for (i = SNDRV_PCM_STREAM_PLAYBACK; i <= SNDRV_PCM_STREAM_LAST; i++) {
		substream = pcm->streams[i].substream;
		if (!substream)
			continue;

		ret = FUNC3(SNDRV_DMA_TYPE_DEV, pcm->card->dev,
				FSL_ASRC_DMABUF_SIZE, &substream->dma_buffer);
		if (ret) {
			FUNC1(card->dev, "failed to allocate DMA buffer\n");
			goto err;
		}
	}

	return 0;

err:
	if (--i == 0 && pcm->streams[i].substream)
		FUNC4(&pcm->streams[i].substream->dma_buffer);

	return ret;
}