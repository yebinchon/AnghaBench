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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct i2s_stream_instance {int num_pages; scalar_t__ acp3x_base; int /*<<< orphan*/  dma_addr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ACP_SRAM_PTE_OFFSET ; 
 int FUNC0 (int) ; 
 int BT_RX_THRESHOLD ; 
 int BT_TX_THRESHOLD ; 
 int CAPTURE_FIFO_ADDR_OFFSET ; 
 int DMA_SIZE ; 
 int FIFO_SIZE ; 
 int MAX_BUFFER ; 
 int MEM_WINDOW_START ; 
 scalar_t__ PAGE_SIZE ; 
 int PAGE_SIZE_4K_ENABLE ; 
 int PLAYBACK_FIFO_ADDR_OFFSET ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ mmACPAXI2AXI_ATU_BASE_ADDR_GRP_1 ; 
 scalar_t__ mmACPAXI2AXI_ATU_PAGE_SIZE_GRP_1 ; 
 scalar_t__ mmACP_BT_RX_DMA_SIZE ; 
 scalar_t__ mmACP_BT_RX_FIFOADDR ; 
 scalar_t__ mmACP_BT_RX_FIFOSIZE ; 
 scalar_t__ mmACP_BT_RX_RINGBUFADDR ; 
 scalar_t__ mmACP_BT_RX_RINGBUFSIZE ; 
 scalar_t__ mmACP_BT_TX_DMA_SIZE ; 
 scalar_t__ mmACP_BT_TX_FIFOADDR ; 
 scalar_t__ mmACP_BT_TX_FIFOSIZE ; 
 scalar_t__ mmACP_BT_TX_RINGBUFADDR ; 
 scalar_t__ mmACP_BT_TX_RINGBUFSIZE ; 
 scalar_t__ mmACP_EXTERNAL_INTR_CNTL ; 
 scalar_t__ mmACP_SCRATCH_REG_0 ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i2s_stream_instance *rtd, int direction)
{
	u16 page_idx;
	u32 low, high, val, acp_fifo_addr;
	dma_addr_t addr = rtd->dma_addr;

	/* 8 scratch registers used to map one 64 bit address */
	if (direction == SNDRV_PCM_STREAM_PLAYBACK)
		val = 0;
	else
		val = rtd->num_pages * 8;

	/* Group Enable */
	FUNC2(ACP_SRAM_PTE_OFFSET | FUNC0(31), rtd->acp3x_base +
		  mmACPAXI2AXI_ATU_BASE_ADDR_GRP_1);
	FUNC2(PAGE_SIZE_4K_ENABLE, rtd->acp3x_base +
		  mmACPAXI2AXI_ATU_PAGE_SIZE_GRP_1);

	for (page_idx = 0; page_idx < rtd->num_pages; page_idx++) {
		/* Load the low address of page int ACP SRAM through SRBM */
		low = FUNC1(addr);
		high = FUNC3(addr);

		FUNC2(low, rtd->acp3x_base + mmACP_SCRATCH_REG_0 + val);
		high |= FUNC0(31);
		FUNC2(high, rtd->acp3x_base + mmACP_SCRATCH_REG_0 + val
				+ 4);
		/* Move to next physically contiguos page */
		val += 8;
		addr += PAGE_SIZE;
	}

	if (direction == SNDRV_PCM_STREAM_PLAYBACK) {
		/* Config ringbuffer */
		FUNC2(MEM_WINDOW_START, rtd->acp3x_base +
			  mmACP_BT_TX_RINGBUFADDR);
		FUNC2(MAX_BUFFER, rtd->acp3x_base +
			  mmACP_BT_TX_RINGBUFSIZE);
		FUNC2(DMA_SIZE, rtd->acp3x_base + mmACP_BT_TX_DMA_SIZE);

		/* Config audio fifo */
		acp_fifo_addr = ACP_SRAM_PTE_OFFSET + (rtd->num_pages * 8)
				+ PLAYBACK_FIFO_ADDR_OFFSET;
		FUNC2(acp_fifo_addr, rtd->acp3x_base +
			  mmACP_BT_TX_FIFOADDR);
		FUNC2(FIFO_SIZE, rtd->acp3x_base + mmACP_BT_TX_FIFOSIZE);
	} else {
		/* Config ringbuffer */
		FUNC2(MEM_WINDOW_START + MAX_BUFFER, rtd->acp3x_base +
			  mmACP_BT_RX_RINGBUFADDR);
		FUNC2(MAX_BUFFER, rtd->acp3x_base +
			  mmACP_BT_RX_RINGBUFSIZE);
		FUNC2(DMA_SIZE, rtd->acp3x_base + mmACP_BT_RX_DMA_SIZE);

		/* Config audio fifo */
		acp_fifo_addr = ACP_SRAM_PTE_OFFSET +
				(rtd->num_pages * 8) + CAPTURE_FIFO_ADDR_OFFSET;
		FUNC2(acp_fifo_addr, rtd->acp3x_base +
			  mmACP_BT_RX_FIFOADDR);
		FUNC2(FIFO_SIZE, rtd->acp3x_base + mmACP_BT_RX_FIFOSIZE);
	}

	/* Enable  watermark/period interrupt to host */
	FUNC2(FUNC0(BT_TX_THRESHOLD) | FUNC0(BT_RX_THRESHOLD),
		  rtd->acp3x_base + mmACP_EXTERNAL_INTR_CNTL);
}