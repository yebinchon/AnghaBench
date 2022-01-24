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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_pcm_substream {TYPE_3__* pcm; TYPE_1__* pstr; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct psc_dma_stream {struct snd_pcm_substream* stream; } ;
struct psc_dma {struct psc_dma_stream playback; struct psc_dma_stream capture; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_2__* card; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  psc_dma_hardware ; 
 int FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct psc_dma* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct psc_dma *psc_dma = FUNC3(rtd->cpu_dai);
	struct psc_dma_stream *s;
	int rc;

	FUNC0(psc_dma->dev, "psc_dma_open(substream=%p)\n", substream);

	if (substream->pstr->stream == SNDRV_PCM_STREAM_CAPTURE)
		s = &psc_dma->capture;
	else
		s = &psc_dma->playback;

	FUNC4(substream, &psc_dma_hardware);

	rc = FUNC2(runtime,
		SNDRV_PCM_HW_PARAM_PERIODS);
	if (rc < 0) {
		FUNC1(substream->pcm->card->dev, "invalid buffer size\n");
		return rc;
	}

	s->stream = substream;
	return 0;
}