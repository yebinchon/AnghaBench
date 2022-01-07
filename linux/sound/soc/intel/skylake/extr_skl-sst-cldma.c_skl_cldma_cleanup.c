
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dmab_bdl; int dmab_data; } ;
struct TYPE_3__ {int (* free_dma_buf ) (int ,int *) ;} ;
struct sst_dsp {TYPE_2__ cl_dev; int dev; TYPE_1__ dsp_ops; } ;


 int skl_cldma_cleanup_spb (struct sst_dsp*) ;
 int skl_cldma_stream_clear (struct sst_dsp*) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;

__attribute__((used)) static void skl_cldma_cleanup(struct sst_dsp *ctx)
{
 skl_cldma_cleanup_spb(ctx);
 skl_cldma_stream_clear(ctx);

 ctx->dsp_ops.free_dma_buf(ctx->dev, &ctx->cl_dev.dmab_data);
 ctx->dsp_ops.free_dma_buf(ctx->dev, &ctx->cl_dev.dmab_bdl);
}
