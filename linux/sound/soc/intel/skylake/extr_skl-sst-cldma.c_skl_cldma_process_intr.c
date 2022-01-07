
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int wait_condition; int wait_queue; int wake_status; } ;
struct sst_dsp {TYPE_1__ cl_dev; } ;


 int SKL_ADSP_REG_CL_SD_STS ;
 int SKL_CL_DMA_BUF_COMPLETE ;
 int SKL_CL_DMA_ERR ;
 int SKL_CL_DMA_SD_INT_COMPLETE ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;
 int wake_up (int *) ;

void skl_cldma_process_intr(struct sst_dsp *ctx)
{
 u8 cl_dma_intr_status;

 cl_dma_intr_status =
  sst_dsp_shim_read_unlocked(ctx, SKL_ADSP_REG_CL_SD_STS);

 if (!(cl_dma_intr_status & SKL_CL_DMA_SD_INT_COMPLETE))
  ctx->cl_dev.wake_status = SKL_CL_DMA_ERR;
 else
  ctx->cl_dev.wake_status = SKL_CL_DMA_BUF_COMPLETE;

 ctx->cl_dev.wait_condition = 1;
 wake_up(&ctx->cl_dev.wait_queue);
}
