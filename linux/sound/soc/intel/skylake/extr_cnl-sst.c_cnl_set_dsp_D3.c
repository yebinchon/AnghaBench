
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_dsp {int dev; struct skl_dev* thread_context; } ;
struct skl_ipc_dxstate_info {unsigned int core_mask; int dx_mask; } ;
struct TYPE_2__ {int * state; } ;
struct skl_dev {int fw_loaded; TYPE_1__ cores; int ipc; } ;


 int CNL_BASE_FW_MODULE_ID ;
 int CNL_INSTANCE_ID ;
 unsigned int SKL_DSP_CORE0_ID ;
 unsigned int SKL_DSP_CORE_MASK (unsigned int) ;
 int SKL_DSP_RESET ;
 int SKL_IPC_D3_MASK ;
 int cnl_dsp_disable_core (struct sst_dsp*,unsigned int) ;
 int dev_err (int ,char*,unsigned int,...) ;
 int skl_ipc_int_disable (struct sst_dsp*) ;
 int skl_ipc_op_int_disable (struct sst_dsp*) ;
 int skl_ipc_set_dx (int *,int ,int ,struct skl_ipc_dxstate_info*) ;

__attribute__((used)) static int cnl_set_dsp_D3(struct sst_dsp *ctx, unsigned int core_id)
{
 struct skl_dev *cnl = ctx->thread_context;
 unsigned int core_mask = SKL_DSP_CORE_MASK(core_id);
 struct skl_ipc_dxstate_info dx;
 int ret;

 dx.core_mask = core_mask;
 dx.dx_mask = SKL_IPC_D3_MASK;

 ret = skl_ipc_set_dx(&cnl->ipc, CNL_INSTANCE_ID,
        CNL_BASE_FW_MODULE_ID, &dx);
 if (ret < 0) {
  dev_err(ctx->dev,
   "dsp core %d to d3 failed; continue reset\n",
   core_id);
  cnl->fw_loaded = 0;
 }


 if (core_id == SKL_DSP_CORE0_ID) {
  skl_ipc_op_int_disable(ctx);
  skl_ipc_int_disable(ctx);
 }

 ret = cnl_dsp_disable_core(ctx, core_mask);
 if (ret < 0) {
  dev_err(ctx->dev, "disable dsp core %d failed: %d\n",
   core_id, ret);
  return ret;
 }

 cnl->cores.state[core_id] = SKL_DSP_RESET;

 return ret;
}
