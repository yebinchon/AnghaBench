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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct dmaengine_pcm_runtime_data {struct dma_chan* dma_chan; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {struct dmaengine_pcm_runtime_data* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 struct dmaengine_pcm_runtime_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC2(struct snd_pcm_substream *substream,
	struct dma_chan *chan)
{
	struct dmaengine_pcm_runtime_data *prtd;
	int ret;

	if (!chan)
		return -ENXIO;

	ret = FUNC1(substream->runtime,
					    SNDRV_PCM_HW_PARAM_PERIODS);
	if (ret < 0)
		return ret;

	prtd = FUNC0(sizeof(*prtd), GFP_KERNEL);
	if (!prtd)
		return -ENOMEM;

	prtd->dma_chan = chan;

	substream->runtime->private_data = prtd;

	return 0;
}