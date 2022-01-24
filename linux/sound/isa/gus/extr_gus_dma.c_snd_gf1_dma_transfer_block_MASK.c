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
struct TYPE_2__ {int dma_flags; struct snd_gf1_dma_block* dma_data_pcm_last; struct snd_gf1_dma_block* dma_data_pcm; struct snd_gf1_dma_block* dma_data_synth_last; struct snd_gf1_dma_block* dma_data_synth; } ;
struct snd_gus_card {int /*<<< orphan*/  dma_lock; TYPE_1__ gf1; } ;
struct snd_gf1_dma_block {scalar_t__ cmd; int /*<<< orphan*/  count; int /*<<< orphan*/  buf_addr; int /*<<< orphan*/  addr; struct snd_gf1_dma_block* next; scalar_t__ buffer; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SNDRV_GF1_DMA_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gf1_dma_block*) ; 
 struct snd_gf1_dma_block* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct snd_gf1_dma_block* FUNC2 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_gus_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (char*,long,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct snd_gus_card * gus,
			       struct snd_gf1_dma_block * __block,
			       int atomic,
			       int synth)
{
	unsigned long flags;
	struct snd_gf1_dma_block *block;

	block = FUNC1(sizeof(*block), atomic ? GFP_ATOMIC : GFP_KERNEL);
	if (!block)
		return -ENOMEM;

	*block = *__block;
	block->next = NULL;

	FUNC4("addr = 0x%x, buffer = 0x%lx, count = 0x%x, cmd = 0x%x\n",
		    block->addr, (long) block->buffer, block->count,
		    block->cmd);

	FUNC4("gus->gf1.dma_data_pcm_last = 0x%lx\n",
		    (long)gus->gf1.dma_data_pcm_last);
	FUNC4("gus->gf1.dma_data_pcm = 0x%lx\n",
		    (long)gus->gf1.dma_data_pcm);

	FUNC5(&gus->dma_lock, flags);
	if (synth) {
		if (gus->gf1.dma_data_synth_last) {
			gus->gf1.dma_data_synth_last->next = block;
			gus->gf1.dma_data_synth_last = block;
		} else {
			gus->gf1.dma_data_synth = 
			gus->gf1.dma_data_synth_last = block;
		}
	} else {
		if (gus->gf1.dma_data_pcm_last) {
			gus->gf1.dma_data_pcm_last->next = block;
			gus->gf1.dma_data_pcm_last = block;
		} else {
			gus->gf1.dma_data_pcm = 
			gus->gf1.dma_data_pcm_last = block;
		}
	}
	if (!(gus->gf1.dma_flags & SNDRV_GF1_DMA_TRIGGER)) {
		gus->gf1.dma_flags |= SNDRV_GF1_DMA_TRIGGER;
		block = FUNC2(gus);
		FUNC6(&gus->dma_lock, flags);
		if (block == NULL)
			return 0;
		FUNC3(gus, block->addr, block->buf_addr, block->count, (unsigned short) block->cmd);
		FUNC0(block);
		return 0;
	}
	FUNC6(&gus->dma_lock, flags);
	return 0;
}