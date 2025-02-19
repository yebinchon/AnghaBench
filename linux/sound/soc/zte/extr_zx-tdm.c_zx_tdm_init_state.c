
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tdm_info {int dummy; } ;


 unsigned int FIFOCTRL_RX_FIFO_RST ;
 unsigned int FIFOCTRL_THRESHOLD (int) ;
 unsigned int FIFOCTRL_TX_FIFO_RST ;
 unsigned int INT_DISABLE_ALL ;
 unsigned int INT_STATUS_MASK ;
 unsigned int PROCESS_DISABLE_ALL ;
 int REG_INT_EN ;
 int REG_INT_STATUS ;
 int REG_PROCESS_CTRL ;
 int REG_RX_FIFO_CTRL ;
 int REG_TIMING_CTRL ;
 int REG_TX_FIFO_CTRL ;
 unsigned int RXTH_MASK ;
 unsigned int RX_FIFO_RST_MASK ;
 unsigned int TIMING_CLK_SEL_DEF ;
 unsigned int TIMING_CLK_SEL_MASK ;
 unsigned int TIMING_LSB_FIRST ;
 unsigned int TXTH_MASK ;
 unsigned int TX_FIFO_RST_MASK ;
 unsigned int zx_tdm_readl (struct zx_tdm_info*,int ) ;
 int zx_tdm_writel (struct zx_tdm_info*,int ,unsigned int) ;

__attribute__((used)) static void zx_tdm_init_state(struct zx_tdm_info *tdm)
{
 unsigned int val;

 zx_tdm_writel(tdm, REG_PROCESS_CTRL, PROCESS_DISABLE_ALL);

 val = zx_tdm_readl(tdm, REG_TIMING_CTRL);
 val |= TIMING_LSB_FIRST;
 val &= ~TIMING_CLK_SEL_MASK;
 val |= TIMING_CLK_SEL_DEF;
 zx_tdm_writel(tdm, REG_TIMING_CTRL, val);

 zx_tdm_writel(tdm, REG_INT_EN, INT_DISABLE_ALL);



 zx_tdm_writel(tdm, REG_INT_STATUS, INT_STATUS_MASK);
 zx_tdm_writel(tdm, REG_RX_FIFO_CTRL, FIFOCTRL_RX_FIFO_RST);
 zx_tdm_writel(tdm, REG_TX_FIFO_CTRL, FIFOCTRL_TX_FIFO_RST);

 val = zx_tdm_readl(tdm, REG_RX_FIFO_CTRL);
 val &= ~(RXTH_MASK | RX_FIFO_RST_MASK);
 val |= FIFOCTRL_THRESHOLD(8);
 zx_tdm_writel(tdm, REG_RX_FIFO_CTRL, val);

 val = zx_tdm_readl(tdm, REG_TX_FIFO_CTRL);
 val &= ~(TXTH_MASK | TX_FIFO_RST_MASK);
 val |= FIFOCTRL_THRESHOLD(8);
 zx_tdm_writel(tdm, REG_TX_FIFO_CTRL, val);
}
