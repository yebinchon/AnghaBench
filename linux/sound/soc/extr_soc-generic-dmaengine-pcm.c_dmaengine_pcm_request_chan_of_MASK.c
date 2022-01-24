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
struct snd_dmaengine_pcm_config {char** chan_names; struct device* dma_dev; } ;
struct dmaengine_pcm {int flags; struct dma_chan** chan; } ;
struct dma_chan {int dummy; } ;
struct device {scalar_t__ of_node; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct dma_chan*) ; 
 int FUNC1 (struct dma_chan*) ; 
 unsigned int SNDRV_PCM_STREAM_CAPTURE ; 
 unsigned int SNDRV_PCM_STREAM_PLAYBACK ; 
 int SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX ; 
 int SND_DMAENGINE_PCM_FLAG_NO_DT ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct dma_chan* FUNC4 (struct device*,char const*) ; 
 char** dmaengine_pcm_dma_channel_names ; 

__attribute__((used)) static int FUNC5(struct dmaengine_pcm *pcm,
	struct device *dev, const struct snd_dmaengine_pcm_config *config)
{
	unsigned int i;
	const char *name;
	struct dma_chan *chan;

	if ((pcm->flags & SND_DMAENGINE_PCM_FLAG_NO_DT) || (!dev->of_node &&
	    !(config && config->dma_dev && config->dma_dev->of_node)))
		return 0;

	if (config && config->dma_dev) {
		/*
		 * If this warning is seen, it probably means that your Linux
		 * device structure does not match your HW device structure.
		 * It would be best to refactor the Linux device structure to
		 * correctly match the HW structure.
		 */
		FUNC3(dev, "DMA channels sourced from device %s",
			 FUNC2(config->dma_dev));
		dev = config->dma_dev;
	}

	for (i = SNDRV_PCM_STREAM_PLAYBACK; i <= SNDRV_PCM_STREAM_CAPTURE;
	     i++) {
		if (pcm->flags & SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX)
			name = "rx-tx";
		else
			name = dmaengine_pcm_dma_channel_names[i];
		if (config && config->chan_names[i])
			name = config->chan_names[i];
		chan = FUNC4(dev, name);
		if (FUNC0(chan)) {
			if (FUNC1(chan) == -EPROBE_DEFER)
				return -EPROBE_DEFER;
			pcm->chan[i] = NULL;
		} else {
			pcm->chan[i] = chan;
		}
		if (pcm->flags & SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX)
			break;
	}

	if (pcm->flags & SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX)
		pcm->chan[1] = pcm->chan[0];

	return 0;
}