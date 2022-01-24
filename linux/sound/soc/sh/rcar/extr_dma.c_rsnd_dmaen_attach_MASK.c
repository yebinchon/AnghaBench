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
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dma_ctrl {int /*<<< orphan*/  dmaen_num; } ;
struct rsnd_dma {int dummy; } ;
struct rsnd_dai_stream {int /*<<< orphan*/  dmac_dev; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct dma_chan*) ; 
 int FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 struct dma_chan* FUNC3 (struct rsnd_dai_stream*,struct rsnd_mod*,struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC4 (struct rsnd_dai_stream*) ; 
 struct rsnd_dma_ctrl* FUNC5 (struct rsnd_priv*) ; 

__attribute__((used)) static int FUNC6(struct rsnd_dai_stream *io,
			   struct rsnd_dma *dma,
			   struct rsnd_mod *mod_from, struct rsnd_mod *mod_to)
{
	struct rsnd_priv *priv = FUNC4(io);
	struct rsnd_dma_ctrl *dmac = FUNC5(priv);
	struct dma_chan *chan;

	/* try to get DMAEngine channel */
	chan = FUNC3(io, mod_from, mod_to);
	if (FUNC0(chan)) {
		/* Let's follow when -EPROBE_DEFER case */
		if (FUNC1(chan) == -EPROBE_DEFER)
			return FUNC1(chan);

		/*
		 * DMA failed. try to PIO mode
		 * see
		 *	rsnd_ssi_fallback()
		 *	rsnd_rdai_continuance_probe()
		 */
		return -EAGAIN;
	}

	/*
	 * use it for IPMMU if needed
	 * see
	 *	rsnd_preallocate_pages()
	 */
	io->dmac_dev = chan->device->dev;

	FUNC2(chan);

	dmac->dmaen_num++;

	return 0;
}