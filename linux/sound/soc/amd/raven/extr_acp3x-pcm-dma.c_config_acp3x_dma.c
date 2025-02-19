
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct i2s_stream_instance {int num_pages; scalar_t__ acp3x_base; int dma_addr; } ;
typedef int dma_addr_t ;


 int ACP_SRAM_PTE_OFFSET ;
 int BIT (int) ;
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
 int lower_32_bits (int ) ;
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
 int rv_writel (int,scalar_t__) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void config_acp3x_dma(struct i2s_stream_instance *rtd, int direction)
{
 u16 page_idx;
 u32 low, high, val, acp_fifo_addr;
 dma_addr_t addr = rtd->dma_addr;


 if (direction == SNDRV_PCM_STREAM_PLAYBACK)
  val = 0;
 else
  val = rtd->num_pages * 8;


 rv_writel(ACP_SRAM_PTE_OFFSET | BIT(31), rtd->acp3x_base +
    mmACPAXI2AXI_ATU_BASE_ADDR_GRP_1);
 rv_writel(PAGE_SIZE_4K_ENABLE, rtd->acp3x_base +
    mmACPAXI2AXI_ATU_PAGE_SIZE_GRP_1);

 for (page_idx = 0; page_idx < rtd->num_pages; page_idx++) {

  low = lower_32_bits(addr);
  high = upper_32_bits(addr);

  rv_writel(low, rtd->acp3x_base + mmACP_SCRATCH_REG_0 + val);
  high |= BIT(31);
  rv_writel(high, rtd->acp3x_base + mmACP_SCRATCH_REG_0 + val
    + 4);

  val += 8;
  addr += PAGE_SIZE;
 }

 if (direction == SNDRV_PCM_STREAM_PLAYBACK) {

  rv_writel(MEM_WINDOW_START, rtd->acp3x_base +
     mmACP_BT_TX_RINGBUFADDR);
  rv_writel(MAX_BUFFER, rtd->acp3x_base +
     mmACP_BT_TX_RINGBUFSIZE);
  rv_writel(DMA_SIZE, rtd->acp3x_base + mmACP_BT_TX_DMA_SIZE);


  acp_fifo_addr = ACP_SRAM_PTE_OFFSET + (rtd->num_pages * 8)
    + PLAYBACK_FIFO_ADDR_OFFSET;
  rv_writel(acp_fifo_addr, rtd->acp3x_base +
     mmACP_BT_TX_FIFOADDR);
  rv_writel(FIFO_SIZE, rtd->acp3x_base + mmACP_BT_TX_FIFOSIZE);
 } else {

  rv_writel(MEM_WINDOW_START + MAX_BUFFER, rtd->acp3x_base +
     mmACP_BT_RX_RINGBUFADDR);
  rv_writel(MAX_BUFFER, rtd->acp3x_base +
     mmACP_BT_RX_RINGBUFSIZE);
  rv_writel(DMA_SIZE, rtd->acp3x_base + mmACP_BT_RX_DMA_SIZE);


  acp_fifo_addr = ACP_SRAM_PTE_OFFSET +
    (rtd->num_pages * 8) + CAPTURE_FIFO_ADDR_OFFSET;
  rv_writel(acp_fifo_addr, rtd->acp3x_base +
     mmACP_BT_RX_FIFOADDR);
  rv_writel(FIFO_SIZE, rtd->acp3x_base + mmACP_BT_RX_FIFOSIZE);
 }


 rv_writel(BIT(BT_TX_THRESHOLD) | BIT(BT_RX_THRESHOLD),
    rtd->acp3x_base + mmACP_EXTERNAL_INTR_CNTL);
}
