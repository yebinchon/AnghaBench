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
struct sprd_pcm_dma_private {int hw_chan; int dma_addr_offset; struct sprd_pcm_dma_data* data; } ;
struct sprd_pcm_dma_data {int pre_pointer; int /*<<< orphan*/  cookie; int /*<<< orphan*/  chan; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; scalar_t__ buffer_size; struct sprd_pcm_dma_private* private_data; } ;
struct dma_tx_state {int residue; } ;
typedef  scalar_t__ snd_pcm_uframes_t ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;

/* Variables and functions */
 int DMA_ERROR ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int SPRD_PCM_CHANNEL_MAX ; 
 scalar_t__ FUNC0 (struct snd_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 struct snd_soc_component* FUNC5 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct sprd_pcm_dma_private *dma_private = runtime->private_data;
	struct snd_soc_component *component =
		FUNC5(rtd, DRV_NAME);
	int pointer[SPRD_PCM_CHANNEL_MAX];
	int bytes_of_pointer = 0, sel_max = 0, i;
	snd_pcm_uframes_t x;
	struct dma_tx_state state;
	enum dma_status status;

	for (i = 0; i < dma_private->hw_chan; i++) {
		struct sprd_pcm_dma_data *data = &dma_private->data[i];

		if (!data->chan)
			continue;

		status = FUNC2(data->chan, data->cookie, &state);
		if (status == DMA_ERROR) {
			FUNC1(component->dev,
				"failed to get dma channel %d status\n", i);
			return 0;
		}

		/*
		 * We just get current transfer address from the DMA engine, so
		 * we need convert to current pointer.
		 */
		pointer[i] = state.residue - runtime->dma_addr -
			i * dma_private->dma_addr_offset;

		if (i == 0) {
			bytes_of_pointer = pointer[i];
			sel_max = pointer[i] < data->pre_pointer ? 1 : 0;
		} else {
			sel_max ^= pointer[i] < data->pre_pointer ? 1 : 0;

			if (sel_max)
				bytes_of_pointer =
					FUNC3(pointer[i], pointer[i - 1]) << 1;
			else
				bytes_of_pointer =
					FUNC4(pointer[i], pointer[i - 1]) << 1;
		}

		data->pre_pointer = pointer[i];
	}

	x = FUNC0(runtime, bytes_of_pointer);
	if (x == runtime->buffer_size)
		x = 0;

	return x;
}