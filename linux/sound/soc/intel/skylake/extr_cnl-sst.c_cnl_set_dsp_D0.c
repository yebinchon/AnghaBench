
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_dsp {int dev; struct skl_dev* thread_context; } ;
struct skl_ipc_dxstate_info {unsigned int core_mask; unsigned int dx_mask; } ;
struct TYPE_2__ {void** state; } ;
struct skl_dev {int boot_complete; TYPE_1__ cores; int ipc; int boot_wait; int fw_loaded; } ;


 int CNL_ADSP_ERROR_CODE ;
 int CNL_ADSP_FW_STATUS ;
 int CNL_BASE_FW_MODULE_ID ;
 int CNL_INSTANCE_ID ;
 unsigned int SKL_DSP_CORE0_ID ;
 unsigned int SKL_DSP_CORE_MASK (unsigned int) ;
 void* SKL_DSP_RUNNING ;
 int SKL_IPC_BOOT_MSECS ;
 int cnl_dsp_disable_core (struct sst_dsp*,unsigned int) ;
 int cnl_dsp_enable_core (struct sst_dsp*,unsigned int) ;
 int cnl_ipc_int_enable (struct sst_dsp*) ;
 int cnl_ipc_op_int_enable (struct sst_dsp*) ;
 int cnl_load_base_firmware (struct sst_dsp*) ;
 int dev_err (int ,char*,unsigned int,...) ;
 int msecs_to_jiffies (int ) ;
 int skl_ipc_set_dx (int *,int ,int ,struct skl_ipc_dxstate_info*) ;
 int sst_dsp_shim_read (struct sst_dsp*,int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int cnl_set_dsp_D0(struct sst_dsp *ctx, unsigned int core_id)
{
 struct skl_dev *cnl = ctx->thread_context;
 unsigned int core_mask = SKL_DSP_CORE_MASK(core_id);
 struct skl_ipc_dxstate_info dx;
 int ret;

 if (!cnl->fw_loaded) {
  cnl->boot_complete = 0;
  ret = cnl_load_base_firmware(ctx);
  if (ret < 0) {
   dev_err(ctx->dev, "fw reload failed: %d\n", ret);
   return ret;
  }

  cnl->cores.state[core_id] = SKL_DSP_RUNNING;
  return ret;
 }

 ret = cnl_dsp_enable_core(ctx, core_mask);
 if (ret < 0) {
  dev_err(ctx->dev, "enable dsp core %d failed: %d\n",
   core_id, ret);
  goto err;
 }

 if (core_id == SKL_DSP_CORE0_ID) {

  cnl_ipc_int_enable(ctx);
  cnl_ipc_op_int_enable(ctx);
  cnl->boot_complete = 0;

  ret = wait_event_timeout(cnl->boot_wait, cnl->boot_complete,
      msecs_to_jiffies(SKL_IPC_BOOT_MSECS));
  if (ret == 0) {
   dev_err(ctx->dev,
    "dsp boot timeout, status=%#x error=%#x\n",
    sst_dsp_shim_read(ctx, CNL_ADSP_FW_STATUS),
    sst_dsp_shim_read(ctx, CNL_ADSP_ERROR_CODE));
   goto err;
  }
 } else {
  dx.core_mask = core_mask;
  dx.dx_mask = core_mask;

  ret = skl_ipc_set_dx(&cnl->ipc, CNL_INSTANCE_ID,
         CNL_BASE_FW_MODULE_ID, &dx);
  if (ret < 0) {
   dev_err(ctx->dev, "set_dx failed, core: %d ret: %d\n",
    core_id, ret);
   goto err;
  }
 }
 cnl->cores.state[core_id] = SKL_DSP_RUNNING;

 return 0;
err:
 cnl_dsp_disable_core(ctx, core_mask);

 return ret;
}
