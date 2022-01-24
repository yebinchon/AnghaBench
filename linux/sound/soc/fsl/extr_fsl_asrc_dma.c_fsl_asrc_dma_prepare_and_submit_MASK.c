#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {int dma_addr; int /*<<< orphan*/  no_period_wakeup; struct fsl_asrc_pair* private_data; } ;
struct fsl_asrc_pair {TYPE_1__** desc; int /*<<< orphan*/ * dma_chan; scalar_t__ pos; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct snd_pcm_substream* callback_param; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 unsigned long DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_DEV ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 unsigned long DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 size_t IN ; 
 size_t OUT ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  fsl_asrc_dma_complete ; 
 int FUNC3 (struct snd_pcm_substream*) ; 
 int FUNC4 (struct snd_pcm_substream*) ; 
 struct snd_soc_component* FUNC5 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	u8 dir = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ? OUT : IN;
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct fsl_asrc_pair *pair = runtime->private_data;
	struct snd_soc_component *component = FUNC5(rtd, DRV_NAME);
	struct device *dev = component->dev;
	unsigned long flags = DMA_CTRL_ACK;

	/* Prepare and submit Front-End DMA channel */
	if (!substream->runtime->no_period_wakeup)
		flags |= DMA_PREP_INTERRUPT;

	pair->pos = 0;
	pair->desc[!dir] = FUNC1(
			pair->dma_chan[!dir], runtime->dma_addr,
			FUNC3(substream),
			FUNC4(substream),
			dir == OUT ? DMA_MEM_TO_DEV : DMA_DEV_TO_MEM, flags);
	if (!pair->desc[!dir]) {
		FUNC0(dev, "failed to prepare slave DMA for Front-End\n");
		return -ENOMEM;
	}

	pair->desc[!dir]->callback = fsl_asrc_dma_complete;
	pair->desc[!dir]->callback_param = substream;

	FUNC2(pair->desc[!dir]);

	/* Prepare and submit Back-End DMA channel */
	pair->desc[dir] = FUNC1(
			pair->dma_chan[dir], 0xffff, 64, 64, DMA_DEV_TO_DEV, 0);
	if (!pair->desc[dir]) {
		FUNC0(dev, "failed to prepare slave DMA for Back-End\n");
		return -ENOMEM;
	}

	FUNC2(pair->desc[dir]);

	return 0;
}