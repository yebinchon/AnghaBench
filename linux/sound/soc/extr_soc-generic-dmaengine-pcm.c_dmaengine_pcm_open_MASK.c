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
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct dmaengine_pcm {struct dma_chan** chan; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_DMAENGINE_PCM_DRV_NAME ; 
 int FUNC0 (struct snd_pcm_substream*) ; 
 int FUNC1 (struct snd_pcm_substream*,struct dma_chan*) ; 
 struct snd_soc_component* FUNC2 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct dmaengine_pcm* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component =
		FUNC2(rtd, SND_DMAENGINE_PCM_DRV_NAME);
	struct dmaengine_pcm *pcm = FUNC3(component);
	struct dma_chan *chan = pcm->chan[substream->stream];
	int ret;

	ret = FUNC0(substream);
	if (ret)
		return ret;

	return FUNC1(substream, chan);
}