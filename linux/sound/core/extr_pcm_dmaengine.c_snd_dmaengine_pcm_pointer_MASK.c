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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct dmaengine_pcm_runtime_data {int /*<<< orphan*/  cookie; int /*<<< orphan*/  dma_chan; } ;
struct dma_tx_state {unsigned int residue; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;

/* Variables and functions */
 int DMA_IN_PROGRESS ; 
 int DMA_PAUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 unsigned int FUNC2 (struct snd_pcm_substream*) ; 
 struct dmaengine_pcm_runtime_data* FUNC3 (struct snd_pcm_substream*) ; 

snd_pcm_uframes_t FUNC4(struct snd_pcm_substream *substream)
{
	struct dmaengine_pcm_runtime_data *prtd = FUNC3(substream);
	struct dma_tx_state state;
	enum dma_status status;
	unsigned int buf_size;
	unsigned int pos = 0;

	status = FUNC1(prtd->dma_chan, prtd->cookie, &state);
	if (status == DMA_IN_PROGRESS || status == DMA_PAUSED) {
		buf_size = FUNC2(substream);
		if (state.residue > 0 && state.residue <= buf_size)
			pos = buf_size - state.residue;
	}

	return FUNC0(substream->runtime, pos);
}