
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tdm_info {int dummy; } ;


 unsigned long DEAGULT_FIFO_THRES ;
 unsigned long FIFO_CTRL_RX_DMA_EN ;
 unsigned long FIFO_CTRL_RX_RST ;
 int REG_RX_FIFO_CTRL ;
 unsigned long zx_tdm_readl (struct zx_tdm_info*,int ) ;
 int zx_tdm_writel (struct zx_tdm_info*,int ,unsigned long) ;

__attribute__((used)) static void zx_tdm_rx_dma_en(struct zx_tdm_info *tdm, bool on)
{
 unsigned long val;

 val = zx_tdm_readl(tdm, REG_RX_FIFO_CTRL);
 val |= FIFO_CTRL_RX_RST | DEAGULT_FIFO_THRES;
 if (on)
  val |= FIFO_CTRL_RX_DMA_EN;
 else
  val &= ~FIFO_CTRL_RX_DMA_EN;
 zx_tdm_writel(tdm, REG_RX_FIFO_CTRL, val);
}
