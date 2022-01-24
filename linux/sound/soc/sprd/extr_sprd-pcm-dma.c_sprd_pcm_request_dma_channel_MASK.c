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
struct sprd_pcm_dma_private {struct sprd_pcm_dma_data* data; struct sprd_pcm_dma_params* params; } ;
struct sprd_pcm_dma_params {int* chan_name; } ;
struct sprd_pcm_dma_data {int /*<<< orphan*/  chan; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct sprd_pcm_dma_private* private_data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
 int ENODEV ; 
 int SPRD_PCM_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int) ; 
 struct snd_soc_component* FUNC2 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
					int channels)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct sprd_pcm_dma_private *dma_private = runtime->private_data;
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component =
		FUNC2(rtd, DRV_NAME);
	struct device *dev = component->dev;
	struct sprd_pcm_dma_params *dma_params = dma_private->params;
	int i;

	if (channels > SPRD_PCM_CHANNEL_MAX) {
		FUNC0(dev, "invalid dma channel number:%d\n", channels);
		return -EINVAL;
	}

	for (i = 0; i < channels; i++) {
		struct sprd_pcm_dma_data *data = &dma_private->data[i];

		data->chan = FUNC1(dev,
						       dma_params->chan_name[i]);
		if (!data->chan) {
			FUNC0(dev, "failed to request dma channel:%s\n",
				dma_params->chan_name[i]);
			FUNC3(substream);
			return -ENODEV;
		}
	}

	return 0;
}