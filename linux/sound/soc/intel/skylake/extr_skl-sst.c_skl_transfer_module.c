
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* cl_copy_to_dmabuf ) (struct sst_dsp*,void const*,int,int) ;int (* cl_stop_dma ) (struct sst_dsp*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct sst_dsp {TYPE_2__ cl_dev; int dev; struct skl_dev* thread_context; } ;
struct skl_dev {int mod_load_complete; int mod_load_status; int mod_load_wait; int ipc; } ;


 int EIO ;
 int SKL_IPC_BOOT_MSECS ;
 int SKL_NUM_MODULES ;
 int dev_err (int ,char*,...) ;
 int msecs_to_jiffies (int ) ;
 int skl_cldma_wait_interruptible (struct sst_dsp*) ;
 int skl_ipc_load_modules (int *,int ,int *) ;
 int skl_sst_ipc_load_library (int *,int ,int ,int) ;
 int stub1 (struct sst_dsp*,void const*,int,int) ;
 int stub2 (struct sst_dsp*,void const*,int,int) ;
 int stub3 (struct sst_dsp*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int skl_transfer_module(struct sst_dsp *ctx, const void *data,
   u32 size, u16 mod_id, u8 table_id, bool is_module)
{
 int ret, bytes_left, curr_pos;
 struct skl_dev *skl = ctx->thread_context;
 skl->mod_load_complete = 0;

 bytes_left = ctx->cl_dev.ops.cl_copy_to_dmabuf(ctx, data, size, 0);
 if (bytes_left < 0)
  return bytes_left;


 if (is_module)
  ret = skl_ipc_load_modules(&skl->ipc, SKL_NUM_MODULES, &mod_id);
 else
  ret = skl_sst_ipc_load_library(&skl->ipc, 0, table_id, 0);

 if (ret < 0) {
  dev_err(ctx->dev, "Failed to Load %s with err %d\n",
    is_module ? "module" : "lib", ret);
  goto out;
 }






 while (bytes_left > 0) {
  curr_pos = size - bytes_left;

  ret = skl_cldma_wait_interruptible(ctx);
  if (ret < 0)
   goto out;

  bytes_left = ctx->cl_dev.ops.cl_copy_to_dmabuf(ctx,
       data + curr_pos,
       bytes_left, 0);
 }

 ret = wait_event_timeout(skl->mod_load_wait, skl->mod_load_complete,
    msecs_to_jiffies(SKL_IPC_BOOT_MSECS));
 if (ret == 0 || !skl->mod_load_status) {
  dev_err(ctx->dev, "Module Load failed\n");
  ret = -EIO;
 }

out:
 ctx->cl_dev.ops.cl_stop_dma(ctx);

 return ret;
}
