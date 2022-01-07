
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ux500_msp {int dir_busy; scalar_t__ registers; } ;


 int MSP_DIR_RX ;
 scalar_t__ MSP_DMACR ;
 scalar_t__ MSP_GCR ;
 scalar_t__ MSP_IMSC ;
 int RX_DMA_ENABLE ;
 int RX_ENABLE ;
 int RX_OVERRUN_ERROR_INT ;
 int RX_SERVICE_INT ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void disable_msp_rx(struct ux500_msp *msp)
{
 u32 reg_val_GCR, reg_val_DMACR, reg_val_IMSC;

 reg_val_GCR = readl(msp->registers + MSP_GCR);
 writel(reg_val_GCR & ~RX_ENABLE, msp->registers + MSP_GCR);
 reg_val_DMACR = readl(msp->registers + MSP_DMACR);
 writel(reg_val_DMACR & ~RX_DMA_ENABLE, msp->registers + MSP_DMACR);
 reg_val_IMSC = readl(msp->registers + MSP_IMSC);
 writel(reg_val_IMSC &
   ~(RX_SERVICE_INT | RX_OVERRUN_ERROR_INT),
   msp->registers + MSP_IMSC);

 msp->dir_busy &= ~MSP_DIR_RX;
}
