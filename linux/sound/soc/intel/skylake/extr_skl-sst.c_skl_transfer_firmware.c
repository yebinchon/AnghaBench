
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* cl_copy_to_dmabuf ) (struct sst_dsp*,void const*,int ,int) ;int (* cl_stop_dma ) (struct sst_dsp*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct sst_dsp {TYPE_2__ cl_dev; } ;


 int SKL_ADSP_FW_STATUS ;
 int SKL_BASEFW_TIMEOUT ;
 int SKL_FW_RFW_START ;
 int SKL_FW_STS_MASK ;
 int sst_dsp_register_poll (struct sst_dsp*,int ,int ,int ,int ,char*) ;
 int stub1 (struct sst_dsp*,void const*,int ,int) ;
 int stub2 (struct sst_dsp*) ;

__attribute__((used)) static int skl_transfer_firmware(struct sst_dsp *ctx,
  const void *basefw, u32 base_fw_size)
{
 int ret = 0;

 ret = ctx->cl_dev.ops.cl_copy_to_dmabuf(ctx, basefw, base_fw_size,
        1);
 if (ret < 0)
  return ret;

 ret = sst_dsp_register_poll(ctx,
   SKL_ADSP_FW_STATUS,
   SKL_FW_STS_MASK,
   SKL_FW_RFW_START,
   SKL_BASEFW_TIMEOUT,
   "Firmware boot");

 ctx->cl_dev.ops.cl_stop_dma(ctx);

 return ret;
}
