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
struct snd_soc_pcm_runtime {TYPE_4__* pcm; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_dmaengine_pcm_config {size_t prealloc_buffer_size; scalar_t__* chan_names; TYPE_1__* pcm_hardware; } ;
struct dmaengine_pcm {int flags; scalar_t__* chan; struct snd_dmaengine_pcm_config* config; } ;
struct device {int dummy; } ;
struct TYPE_8__ {TYPE_3__* streams; } ;
struct TYPE_7__ {TYPE_2__* pcm; struct snd_pcm_substream* substream; } ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {size_t buffer_bytes_max; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV_IRAM ; 
 unsigned int SNDRV_PCM_STREAM_CAPTURE ; 
 unsigned int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SND_DMAENGINE_PCM_DRV_NAME ; 
 int SND_DMAENGINE_PCM_FLAG_COMPAT ; 
 int SND_DMAENGINE_PCM_FLAG_NO_RESIDUE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int) ; 
 scalar_t__ FUNC1 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dmaengine_pcm*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct snd_soc_pcm_runtime*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t) ; 
 struct snd_soc_component* FUNC6 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct dmaengine_pcm* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_component *component =
		FUNC6(rtd, SND_DMAENGINE_PCM_DRV_NAME);
	struct dmaengine_pcm *pcm = FUNC7(component);
	const struct snd_dmaengine_pcm_config *config = pcm->config;
	struct device *dev = component->dev;
	struct snd_pcm_substream *substream;
	size_t prealloc_buffer_size;
	size_t max_buffer_size;
	unsigned int i;

	if (config && config->prealloc_buffer_size) {
		prealloc_buffer_size = config->prealloc_buffer_size;
		max_buffer_size = config->pcm_hardware->buffer_bytes_max;
	} else {
		prealloc_buffer_size = 512 * 1024;
		max_buffer_size = SIZE_MAX;
	}

	for (i = SNDRV_PCM_STREAM_PLAYBACK; i <= SNDRV_PCM_STREAM_CAPTURE; i++) {
		substream = rtd->pcm->streams[i].substream;
		if (!substream)
			continue;

		if (!pcm->chan[i] && config && config->chan_names[i])
			pcm->chan[i] = FUNC1(dev,
				config->chan_names[i]);

		if (!pcm->chan[i] && (pcm->flags & SND_DMAENGINE_PCM_FLAG_COMPAT)) {
			pcm->chan[i] = FUNC4(rtd,
				substream);
		}

		if (!pcm->chan[i]) {
			FUNC0(component->dev,
				"Missing dma channel for stream: %d\n", i);
			return -EINVAL;
		}

		FUNC5(substream,
				SNDRV_DMA_TYPE_DEV_IRAM,
				FUNC2(pcm, substream),
				prealloc_buffer_size,
				max_buffer_size);

		if (!FUNC3(dev, pcm->chan[i]))
			pcm->flags |= SND_DMAENGINE_PCM_FLAG_NO_RESIDUE;

		if (rtd->pcm->streams[i].pcm->name[0] == '\0') {
			FUNC8(rtd->pcm->streams[i].pcm->name,
				    rtd->pcm->streams[i].pcm->id,
				    sizeof(rtd->pcm->streams[i].pcm->name));
		}
	}

	return 0;
}