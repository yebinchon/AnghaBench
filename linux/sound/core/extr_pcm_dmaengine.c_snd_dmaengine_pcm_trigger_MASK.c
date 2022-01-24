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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int info; } ;
struct dmaengine_pcm_runtime_data {int /*<<< orphan*/  dma_chan; } ;

/* Variables and functions */
 int EINVAL ; 
 int SNDRV_PCM_INFO_PAUSE ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct dmaengine_pcm_runtime_data* FUNC5 (struct snd_pcm_substream*) ; 

int FUNC6(struct snd_pcm_substream *substream, int cmd)
{
	struct dmaengine_pcm_runtime_data *prtd = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int ret;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		ret = FUNC2(substream);
		if (ret)
			return ret;
		FUNC0(prtd->dma_chan);
		break;
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		FUNC3(prtd->dma_chan);
		break;
	case SNDRV_PCM_TRIGGER_SUSPEND:
		if (runtime->info & SNDRV_PCM_INFO_PAUSE)
			FUNC1(prtd->dma_chan);
		else
			FUNC4(prtd->dma_chan);
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		FUNC1(prtd->dma_chan);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC4(prtd->dma_chan);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}