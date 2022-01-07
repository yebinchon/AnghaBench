
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sprd_mcdt_dev {int dummy; } ;
typedef enum sprd_mcdt_dma_chan { ____Placeholder_sprd_mcdt_dma_chan } sprd_mcdt_dma_chan ;


 int MCDT_DMA_CFG0 ;
 int MCDT_DMA_CH0_SEL_MASK ;
 int MCDT_DMA_CH0_SEL_SHIFT ;
 int MCDT_DMA_CH1_SEL_MASK ;
 int MCDT_DMA_CH1_SEL_SHIFT ;
 int MCDT_DMA_CH2_SEL_MASK ;
 int MCDT_DMA_CH2_SEL_SHIFT ;
 int MCDT_DMA_CH3_SEL_MASK ;
 int MCDT_DMA_CH3_SEL_SHIFT ;
 int MCDT_DMA_CH4_SEL_MASK ;
 int MCDT_DMA_CH4_SEL_SHIFT ;





 int sprd_mcdt_update (struct sprd_mcdt_dev*,int ,int,int ) ;

__attribute__((used)) static void sprd_mcdt_dac_dma_chn_select(struct sprd_mcdt_dev *mcdt, u8 channel,
      enum sprd_mcdt_dma_chan dma_chan)
{
 switch (dma_chan) {
 case 132:
  sprd_mcdt_update(mcdt, MCDT_DMA_CFG0,
     channel << MCDT_DMA_CH0_SEL_SHIFT,
     MCDT_DMA_CH0_SEL_MASK);
  break;

 case 131:
  sprd_mcdt_update(mcdt, MCDT_DMA_CFG0,
     channel << MCDT_DMA_CH1_SEL_SHIFT,
     MCDT_DMA_CH1_SEL_MASK);
  break;

 case 130:
  sprd_mcdt_update(mcdt, MCDT_DMA_CFG0,
     channel << MCDT_DMA_CH2_SEL_SHIFT,
     MCDT_DMA_CH2_SEL_MASK);
  break;

 case 129:
  sprd_mcdt_update(mcdt, MCDT_DMA_CFG0,
     channel << MCDT_DMA_CH3_SEL_SHIFT,
     MCDT_DMA_CH3_SEL_MASK);
  break;

 case 128:
  sprd_mcdt_update(mcdt, MCDT_DMA_CFG0,
     channel << MCDT_DMA_CH4_SEL_SHIFT,
     MCDT_DMA_CH4_SEL_MASK);
  break;
 }
}
