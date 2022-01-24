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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dmaen {scalar_t__ cookie; int /*<<< orphan*/  chan; int /*<<< orphan*/  dma_len; } ;
struct rsnd_dma {int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; } ;
struct rsnd_dai_stream {struct snd_pcm_substream* substream; } ;
struct dma_slave_config {int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; void* dst_addr_width; void* src_addr_width; int /*<<< orphan*/  direction; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  callback_param; int /*<<< orphan*/  callback; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_addr; } ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct dma_slave_config*) ; 
 scalar_t__ FUNC5 (struct dma_async_tx_descriptor*) ; 
 struct rsnd_dmaen* FUNC6 (struct rsnd_dma*) ; 
 int /*<<< orphan*/  rsnd_dmaen_complete ; 
 int FUNC7 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC8 (struct rsnd_dma*) ; 
 int /*<<< orphan*/  FUNC9 (struct rsnd_mod*) ; 
 struct rsnd_dma* FUNC10 (struct rsnd_mod*) ; 
 struct device* FUNC11 (struct rsnd_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC14(struct rsnd_mod *mod,
			    struct rsnd_dai_stream *io,
			    struct rsnd_priv *priv)
{
	struct rsnd_dma *dma = FUNC10(mod);
	struct rsnd_dmaen *dmaen = FUNC6(dma);
	struct snd_pcm_substream *substream = io->substream;
	struct device *dev = FUNC11(priv);
	struct dma_async_tx_descriptor *desc;
	struct dma_slave_config cfg = {};
	int is_play = FUNC7(io);
	int ret;

	cfg.direction	= is_play ? DMA_MEM_TO_DEV : DMA_DEV_TO_MEM;
	cfg.src_addr	= dma->src_addr;
	cfg.dst_addr	= dma->dst_addr;
	cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
	cfg.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;

	FUNC0(dev, "%s %pad -> %pad\n",
		FUNC9(mod),
		&cfg.src_addr, &cfg.dst_addr);

	ret = FUNC4(dmaen->chan, &cfg);
	if (ret < 0)
		return ret;

	desc = FUNC3(dmaen->chan,
					 substream->runtime->dma_addr,
					 FUNC12(substream),
					 FUNC13(substream),
					 is_play ? DMA_MEM_TO_DEV : DMA_DEV_TO_MEM,
					 DMA_PREP_INTERRUPT | DMA_CTRL_ACK);

	if (!desc) {
		FUNC1(dev, "dmaengine_prep_slave_sg() fail\n");
		return -EIO;
	}

	desc->callback		= rsnd_dmaen_complete;
	desc->callback_param	= FUNC8(dma);

	dmaen->dma_len		= FUNC12(substream);

	dmaen->cookie = FUNC5(desc);
	if (dmaen->cookie < 0) {
		FUNC1(dev, "dmaengine_submit() fail\n");
		return -EIO;
	}

	FUNC2(dmaen->chan);

	return 0;
}