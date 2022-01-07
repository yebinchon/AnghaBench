
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* load_library ) (struct sst_dsp*,int ,int) ;} ;
struct sst_dsp {int dev; TYPE_1__ fw_ops; struct skl_dev* thread_context; } ;
struct skl_ipc_dxstate_info {unsigned int core_mask; unsigned int dx_mask; } ;
struct TYPE_4__ {int * state; } ;
struct skl_dev {int lib_count; TYPE_2__ cores; int ipc; int lib_info; } ;


 int SKL_BASE_FW_MODULE_ID ;
 unsigned int SKL_DSP_CORE0_ID ;
 unsigned int SKL_DSP_CORE_MASK (unsigned int) ;
 int SKL_DSP_RUNNING ;
 int SKL_INSTANCE_ID ;
 int dev_err (int ,char*,...) ;
 int skl_dsp_disable_core (struct sst_dsp*,unsigned int) ;
 int skl_dsp_enable_core (struct sst_dsp*,unsigned int) ;
 int skl_ipc_set_dx (int *,int ,int ,struct skl_ipc_dxstate_info*) ;
 int skl_load_base_firmware (struct sst_dsp*) ;
 int stub1 (struct sst_dsp*,int ,int) ;

__attribute__((used)) static int skl_set_dsp_D0(struct sst_dsp *ctx, unsigned int core_id)
{
 int ret;
 struct skl_ipc_dxstate_info dx;
 struct skl_dev *skl = ctx->thread_context;
 unsigned int core_mask = SKL_DSP_CORE_MASK(core_id);


 if (core_id == SKL_DSP_CORE0_ID) {
  ret = skl_load_base_firmware(ctx);
  if (ret < 0) {
   dev_err(ctx->dev, "unable to load firmware\n");
   return ret;
  }


  if (skl->lib_count > 1) {
   ret = ctx->fw_ops.load_library(ctx, skl->lib_info,
       skl->lib_count);
   if (ret < 0) {
    dev_err(ctx->dev, "reload libs failed: %d\n",
      ret);
    return ret;
   }

  }
 }





 if (core_id != SKL_DSP_CORE0_ID) {
  ret = skl_dsp_enable_core(ctx, core_mask);
  if (ret < 0)
   return ret;

  dx.core_mask = core_mask;
  dx.dx_mask = core_mask;

  ret = skl_ipc_set_dx(&skl->ipc, SKL_INSTANCE_ID,
     SKL_BASE_FW_MODULE_ID, &dx);
  if (ret < 0) {
   dev_err(ctx->dev, "Failed to set dsp to D0:core id= %d\n",
     core_id);
   skl_dsp_disable_core(ctx, core_mask);
  }
 }

 skl->cores.state[core_id] = SKL_DSP_RUNNING;

 return 0;
}
