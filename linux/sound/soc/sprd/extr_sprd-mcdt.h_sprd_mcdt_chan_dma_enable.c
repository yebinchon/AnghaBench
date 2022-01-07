
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_mcdt_chan {int dummy; } ;
typedef enum sprd_mcdt_dma_chan { ____Placeholder_sprd_mcdt_dma_chan } sprd_mcdt_dma_chan ;


 int EINVAL ;

int sprd_mcdt_chan_dma_enable(struct sprd_mcdt_chan *chan,
         enum sprd_mcdt_dma_chan dma_chan, u32 water_mark)
{
 return -EINVAL;
}
