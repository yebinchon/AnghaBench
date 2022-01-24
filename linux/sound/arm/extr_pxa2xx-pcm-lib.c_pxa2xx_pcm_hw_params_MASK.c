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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_pcm_substream {int /*<<< orphan*/  dma_buffer; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dmaengine_dai_dma_data {int dummy; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dma_chan*,struct dma_slave_config*) ; 
 struct dma_chan* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*,struct snd_dmaengine_dai_dma_data*,struct dma_slave_config*) ; 
 int FUNC3 (struct snd_pcm_substream*,struct snd_pcm_hw_params*,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 struct snd_dmaengine_dai_dma_data* FUNC5 (int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 

int FUNC6(struct snd_pcm_substream *substream,
			 struct snd_pcm_hw_params *params)
{
	struct dma_chan *chan = FUNC1(substream);
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_dmaengine_dai_dma_data *dma_params;
	struct dma_slave_config config;
	int ret;

	dma_params = FUNC5(rtd->cpu_dai, substream);
	if (!dma_params)
		return 0;

	ret = FUNC3(substream, params, &config);
	if (ret)
		return ret;

	FUNC2(substream,
			FUNC5(rtd->cpu_dai, substream),
			&config);

	ret = FUNC0(chan, &config);
	if (ret)
		return ret;

	FUNC4(substream, &substream->dma_buffer);

	return 0;
}