
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct sprd_mcdt_dev {int dummy; } ;


 int BIT (scalar_t__) ;
 scalar_t__ MCDT_DAC_DMA_SHIFT ;
 int MCDT_DMA_EN ;
 int sprd_mcdt_update (struct sprd_mcdt_dev*,int ,int ,int ) ;

__attribute__((used)) static void sprd_mcdt_dac_dma_enable(struct sprd_mcdt_dev *mcdt, u8 channel,
         bool enable)
{
 u32 shift = MCDT_DAC_DMA_SHIFT + channel;

 if (enable)
  sprd_mcdt_update(mcdt, MCDT_DMA_EN, BIT(shift), BIT(shift));
 else
  sprd_mcdt_update(mcdt, MCDT_DMA_EN, 0, BIT(shift));
}
