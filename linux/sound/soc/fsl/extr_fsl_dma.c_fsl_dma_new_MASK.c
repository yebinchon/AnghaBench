#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {struct snd_pcm* pcm; TYPE_1__* card; } ;
struct snd_pcm {TYPE_3__* streams; } ;
struct snd_card {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  buffer_bytes_max; } ;
struct TYPE_7__ {TYPE_2__* substream; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma_buffer; } ;
struct TYPE_5__ {struct snd_card* snd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ fsl_dma_hardware ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_card *card = rtd->card->snd_card;
	struct snd_pcm *pcm = rtd->pcm;
	int ret;

	ret = FUNC2(card->dev, FUNC0(36));
	if (ret)
		return ret;

	/* Some codecs have separate DAIs for playback and capture, so we
	 * should allocate a DMA buffer only for the streams that are valid.
	 */

	if (pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream) {
		ret = FUNC3(SNDRV_DMA_TYPE_DEV, card->dev,
			fsl_dma_hardware.buffer_bytes_max,
			&pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream->dma_buffer);
		if (ret) {
			FUNC1(card->dev, "can't alloc playback dma buffer\n");
			return ret;
		}
	}

	if (pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream) {
		ret = FUNC3(SNDRV_DMA_TYPE_DEV, card->dev,
			fsl_dma_hardware.buffer_bytes_max,
			&pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream->dma_buffer);
		if (ret) {
			FUNC1(card->dev, "can't alloc capture dma buffer\n");
			FUNC4(&pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream->dma_buffer);
			return ret;
		}
	}

	return 0;
}