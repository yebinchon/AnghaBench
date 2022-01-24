#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  addr_width; int /*<<< orphan*/  addr; } ;
struct sti_uniperiph_dai {scalar_t__ stream; TYPE_2__ dma_data; TYPE_1__* uni; } ;
struct sti_uniperiph_data {struct sti_uniperiph_dai dai_data; } ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fifo_phys_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 struct sti_uniperiph_data* FUNC0 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai)
{
	struct sti_uniperiph_data *priv = FUNC0(dai);
	struct sti_uniperiph_dai *dai_data = &priv->dai_data;

	/* DMA settings*/
	if (priv->dai_data.stream == SNDRV_PCM_STREAM_PLAYBACK)
		FUNC1(dai, &dai_data->dma_data, NULL);
	else
		FUNC1(dai, NULL, &dai_data->dma_data);

	dai_data->dma_data.addr = dai_data->uni->fifo_phys_address;
	dai_data->dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;

	return FUNC2(dai);
}