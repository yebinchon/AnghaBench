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
struct snd_pcm_runtime {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dmaen {scalar_t__ dma_len; int /*<<< orphan*/  cookie; int /*<<< orphan*/  chan; } ;
struct rsnd_dma {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct dma_tx_state {scalar_t__ residue; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;

/* Variables and functions */
 int DMA_IN_PROGRESS ; 
 int DMA_PAUSED ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 struct rsnd_dmaen* FUNC2 (struct rsnd_dma*) ; 
 struct snd_pcm_runtime* FUNC3 (struct rsnd_dai_stream*) ; 
 struct rsnd_dma* FUNC4 (struct rsnd_mod*) ; 

__attribute__((used)) static int FUNC5(struct rsnd_mod *mod,
			      struct rsnd_dai_stream *io,
			      snd_pcm_uframes_t *pointer)
{
	struct snd_pcm_runtime *runtime = FUNC3(io);
	struct rsnd_dma *dma = FUNC4(mod);
	struct rsnd_dmaen *dmaen = FUNC2(dma);
	struct dma_tx_state state;
	enum dma_status status;
	unsigned int pos = 0;

	status = FUNC1(dmaen->chan, dmaen->cookie, &state);
	if (status == DMA_IN_PROGRESS || status == DMA_PAUSED) {
		if (state.residue > 0 && state.residue <= dmaen->dma_len)
			pos = dmaen->dma_len - state.residue;
	}
	*pointer = FUNC0(runtime, pos);

	return 0;
}