
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_dsp {int dev; struct skl_dev* thread_context; } ;
struct skl_ipc_dxstate_info {unsigned int core_mask; int dx_mask; } ;
struct TYPE_2__ {int * state; } ;
struct skl_dev {int fw_loaded; TYPE_1__ cores; int ipc; } ;


 int BXT_BASE_FW_MODULE_ID ;
 int BXT_INSTANCE_ID ;
 unsigned int SKL_DSP_CORE0_ID ;
 unsigned int SKL_DSP_CORE_MASK (unsigned int) ;
 int SKL_DSP_RESET ;
 int SKL_IPC_D3_MASK ;
 int dev_dbg (int ,char*,unsigned int,int ) ;
 int dev_err (int ,char*,int) ;
 int skl_dsp_disable_core (struct sst_dsp*,unsigned int) ;
 int skl_ipc_int_disable (struct sst_dsp*) ;
 int skl_ipc_op_int_disable (struct sst_dsp*) ;
 int skl_ipc_set_dx (int *,int ,int ,struct skl_ipc_dxstate_info*) ;

__attribute__((used)) static int bxt_set_dsp_D3(struct sst_dsp *ctx, unsigned int core_id)
{
 int ret;
 struct skl_ipc_dxstate_info dx;
 struct skl_dev *skl = ctx->thread_context;
 unsigned int core_mask = SKL_DSP_CORE_MASK(core_id);

 dx.core_mask = core_mask;
 dx.dx_mask = SKL_IPC_D3_MASK;

 dev_dbg(ctx->dev, "core mask=%x dx_mask=%x\n",
   dx.core_mask, dx.dx_mask);

 ret = skl_ipc_set_dx(&skl->ipc, BXT_INSTANCE_ID,
    BXT_BASE_FW_MODULE_ID, &dx);
 if (ret < 0) {
  dev_err(ctx->dev,
  "Failed to set DSP to D3:core id = %d;Continue reset\n",
  core_id);




  skl->fw_loaded = 0;
 }

 if (core_id == SKL_DSP_CORE0_ID) {

  skl_ipc_op_int_disable(ctx);
  skl_ipc_int_disable(ctx);
 }
 ret = skl_dsp_disable_core(ctx, core_mask);
 if (ret < 0) {
  dev_err(ctx->dev, "Failed to disable core %d\n", ret);
  return ret;
 }
 skl->cores.state[core_id] = SKL_DSP_RESET;
 return 0;
}
