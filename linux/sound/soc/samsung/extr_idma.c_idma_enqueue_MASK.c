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
typedef  int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; struct idma_ctrl* private_data; } ;
struct idma_ctrl {int periodsz; int /*<<< orphan*/  lock; void* token; } ;
struct TYPE_2__ {int lp_tx_addr; scalar_t__ regs; } ;

/* Variables and functions */
 int AHB_INTENLVL0 ; 
 scalar_t__ I2SAHB ; 
 scalar_t__ I2SLVL0ADDR ; 
 scalar_t__ I2SSIZE ; 
 int I2SSIZE_SHIFT ; 
 int I2SSIZE_TRNMSK ; 
 scalar_t__ I2SSTR0 ; 
 TYPE_1__ idma ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct idma_ctrl *prtd = substream->runtime->private_data;
	u32 val;

	FUNC1(&prtd->lock);
	prtd->token = (void *) substream;
	FUNC2(&prtd->lock);

	/* Internal DMA Level0 Interrupt Address */
	val = idma.lp_tx_addr + prtd->periodsz;
	FUNC3(val, idma.regs + I2SLVL0ADDR);

	/* Start address0 of I2S internal DMA operation. */
	val = idma.lp_tx_addr;
	FUNC3(val, idma.regs + I2SSTR0);

	/*
	 * Transfer block size for I2S internal DMA.
	 * Should decide transfer size before start dma operation
	 */
	val = FUNC0(idma.regs + I2SSIZE);
	val &= ~(I2SSIZE_TRNMSK << I2SSIZE_SHIFT);
	val |= (((runtime->dma_bytes >> 2) &
			I2SSIZE_TRNMSK) << I2SSIZE_SHIFT);
	FUNC3(val, idma.regs + I2SSIZE);

	val = FUNC0(idma.regs + I2SAHB);
	val |= AHB_INTENLVL0;
	FUNC3(val, idma.regs + I2SAHB);

	return 0;
}