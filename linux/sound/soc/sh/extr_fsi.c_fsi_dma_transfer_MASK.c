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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct fsi_stream {int /*<<< orphan*/  chan; struct snd_pcm_substream* substream; } ;
struct fsi_priv {int dummy; } ;
struct dma_async_tx_descriptor {struct fsi_stream* callback_param; int /*<<< orphan*/  callback; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
struct TYPE_2__ {int /*<<< orphan*/  dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_CTL ; 
 int /*<<< orphan*/  DIFF_ST ; 
 int DMA_CTRL_ACK ; 
 int DMA_DEV_TO_MEM ; 
 int DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int EIO ; 
 int ERR_OVER ; 
 int /*<<< orphan*/  FIFO_CLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  fsi_dma_complete ; 
 struct snd_soc_dai* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsi_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct fsi_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fsi_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct fsi_priv*,struct fsi_stream*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC11(struct fsi_priv *fsi, struct fsi_stream *io)
{
	struct snd_soc_dai *dai = FUNC4(io->substream);
	struct snd_pcm_substream *substream = io->substream;
	struct dma_async_tx_descriptor *desc;
	int is_play = FUNC8(fsi, io);
	enum dma_transfer_direction dir;
	int ret = -EIO;

	if (is_play)
		dir = DMA_MEM_TO_DEV;
	else
		dir = DMA_DEV_TO_MEM;

	desc = FUNC2(io->chan,
					 substream->runtime->dma_addr,
					 FUNC9(substream),
					 FUNC10(substream),
					 dir,
					 DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!desc) {
		FUNC0(dai->dev, "dmaengine_prep_dma_cyclic() fail\n");
		goto fsi_dma_transfer_err;
	}

	desc->callback		= fsi_dma_complete;
	desc->callback_param	= io;

	if (FUNC3(desc) < 0) {
		FUNC0(dai->dev, "tx_submit() fail\n");
		goto fsi_dma_transfer_err;
	}

	FUNC1(io->chan);

	/*
	 * FIXME
	 *
	 * In DMAEngine case, codec and FSI cannot be started simultaneously
	 * since FSI is using the scheduler work queue.
	 * Therefore, in capture case, probably FSI FIFO will have got
	 * overflow error in this point.
	 * in that case, DMA cannot start transfer until error was cleared.
	 */
	if (!is_play) {
		if (ERR_OVER & FUNC6(fsi, DIFF_ST)) {
			FUNC5(fsi, DIFF_CTL, FIFO_CLR, FIFO_CLR);
			FUNC7(fsi, DIFF_ST, 0);
		}
	}

	ret = 0;

fsi_dma_transfer_err:
	return ret;
}