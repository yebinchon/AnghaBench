
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stream_tag; int (* cleanup ) (int ,int *,int ) ;int (* trigger ) (int ,int,int ) ;} ;
struct sst_dsp {TYPE_1__ dsp_ops; int dmab; int dev; } ;


 int CNL_ADSP_FW_STATUS ;
 int CNL_BASEFW_TIMEOUT ;
 int CNL_FW_INIT ;
 int CNL_FW_STS_MASK ;
 int sst_dsp_register_poll (struct sst_dsp*,int ,int ,int ,int ,char*) ;
 int stub1 (int ,int,int ) ;
 int stub2 (int ,int,int ) ;
 int stub3 (int ,int *,int ) ;

__attribute__((used)) static int sst_transfer_fw_host_dma(struct sst_dsp *ctx)
{
 int ret;

 ctx->dsp_ops.trigger(ctx->dev, 1, ctx->dsp_ops.stream_tag);
 ret = sst_dsp_register_poll(ctx, CNL_ADSP_FW_STATUS, CNL_FW_STS_MASK,
        CNL_FW_INIT, CNL_BASEFW_TIMEOUT,
        "firmware boot");

 ctx->dsp_ops.trigger(ctx->dev, 0, ctx->dsp_ops.stream_tag);
 ctx->dsp_ops.cleanup(ctx->dev, &ctx->dmab, ctx->dsp_ops.stream_tag);

 return ret;
}
