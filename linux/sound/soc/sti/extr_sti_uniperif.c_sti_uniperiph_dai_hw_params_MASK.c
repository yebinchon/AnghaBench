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
struct uniperif {scalar_t__ type; } ;
struct TYPE_2__ {struct uniperif* uni; } ;
struct sti_uniperiph_data {TYPE_1__ dai_data; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dmaengine_dai_dma_data {int maxburst; } ;

/* Variables and functions */
 scalar_t__ SND_ST_UNIPERIF_TYPE_TDM ; 
 int UNIPERIF_FIFO_FRAMES ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 struct snd_dmaengine_dai_dma_data* FUNC1 (struct snd_soc_dai*,struct snd_pcm_substream*) ; 
 struct sti_uniperiph_data* FUNC2 (struct snd_soc_dai*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 

int FUNC4(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct sti_uniperiph_data *priv = FUNC2(dai);
	struct uniperif *uni = priv->dai_data.uni;
	struct snd_dmaengine_dai_dma_data *dma_data;
	int transfer_size;

	if (uni->type == SND_ST_UNIPERIF_TYPE_TDM)
		/* transfer size = user frame size (in 32-bits FIFO cell) */
		transfer_size = FUNC3(params) / 32;
	else
		transfer_size = FUNC0(params) * UNIPERIF_FIFO_FRAMES;

	dma_data = FUNC1(dai, substream);
	dma_data->maxburst = transfer_size;

	return 0;
}