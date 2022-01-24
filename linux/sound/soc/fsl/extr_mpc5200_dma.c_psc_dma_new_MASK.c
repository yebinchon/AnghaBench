#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {struct snd_pcm* pcm; struct snd_soc_dai* cpu_dai; TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm {TYPE_4__* streams; TYPE_2__* card; } ;
struct snd_card {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {size_t buffer_bytes_max; } ;
struct TYPE_9__ {TYPE_3__* substream; } ;
struct TYPE_8__ {int /*<<< orphan*/  dma_buffer; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct snd_card* snd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct snd_card*,struct snd_soc_dai*,struct snd_pcm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ psc_dma_hardware ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct snd_soc_component* FUNC6 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_card *card = rtd->card->snd_card;
	struct snd_soc_component *component = FUNC6(rtd, DRV_NAME);
	struct snd_soc_dai *dai = rtd->cpu_dai;
	struct snd_pcm *pcm = rtd->pcm;
	size_t size = psc_dma_hardware.buffer_bytes_max;
	int rc;

	FUNC1(component->dev, "psc_dma_new(card=%p, dai=%p, pcm=%p)\n",
		card, dai, pcm);

	rc = FUNC3(card->dev, FUNC0(32));
	if (rc)
		return rc;

	if (pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream) {
		rc = FUNC4(SNDRV_DMA_TYPE_DEV, pcm->card->dev,
				size, &pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream->dma_buffer);
		if (rc)
			goto playback_alloc_err;
	}

	if (pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream) {
		rc = FUNC4(SNDRV_DMA_TYPE_DEV, pcm->card->dev,
				size, &pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream->dma_buffer);
		if (rc)
			goto capture_alloc_err;
	}

	return 0;

 capture_alloc_err:
	if (pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream)
		FUNC5(&pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream->dma_buffer);

 playback_alloc_err:
	FUNC2(card->dev, "Cannot allocate buffer(s)\n");

	return -ENOMEM;
}