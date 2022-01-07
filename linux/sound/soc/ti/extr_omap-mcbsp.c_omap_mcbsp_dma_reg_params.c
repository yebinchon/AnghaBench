
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_mcbsp {int phys_dma_base; TYPE_1__* pdata; } ;
struct TYPE_2__ {int reg_size; int reg_step; } ;


 int OMAP_MCBSP_REG_DRR ;
 int OMAP_MCBSP_REG_DRR1 ;
 int OMAP_MCBSP_REG_DXR ;
 int OMAP_MCBSP_REG_DXR1 ;
 unsigned int SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static int omap_mcbsp_dma_reg_params(struct omap_mcbsp *mcbsp,
         unsigned int stream)
{
 int data_reg;

 if (stream == SNDRV_PCM_STREAM_PLAYBACK) {
  if (mcbsp->pdata->reg_size == 2)
   data_reg = OMAP_MCBSP_REG_DXR1;
  else
   data_reg = OMAP_MCBSP_REG_DXR;
 } else {
  if (mcbsp->pdata->reg_size == 2)
   data_reg = OMAP_MCBSP_REG_DRR1;
  else
   data_reg = OMAP_MCBSP_REG_DRR;
 }

 return mcbsp->phys_dma_base + data_reg * mcbsp->pdata->reg_step;
}
