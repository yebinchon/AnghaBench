
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_block {int dummy; } ;
struct intel_sst_drv {scalar_t__ sst_state; TYPE_1__* ops; int dev; int qos; int memcpy_list; int fw_in_mem; } ;
struct TYPE_2__ {int (* reset ) (struct intel_sst_drv*) ;int (* start ) (struct intel_sst_drv*) ;int (* restore_dsp_context ) () ;int (* post_download ) (struct intel_sst_drv*) ;} ;


 int EAGAIN ;
 int EBUSY ;
 int ENOMEM ;
 int FW_DWNL_ID ;
 int PM_QOS_DEFAULT_VALUE ;
 scalar_t__ SST_FW_LOADING ;
 scalar_t__ SST_FW_RUNNING ;
 scalar_t__ SST_RESET ;
 scalar_t__ SST_SHUTDOWN ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int pm_qos_update_request (int ,int ) ;
 struct sst_block* sst_create_block (struct intel_sst_drv*,int ,int ) ;
 int sst_do_memcpy (int *) ;
 int sst_free_block (struct intel_sst_drv*,struct sst_block*) ;
 int sst_request_fw (struct intel_sst_drv*) ;
 int sst_wait_timeout (struct intel_sst_drv*,struct sst_block*) ;
 int stub1 (struct intel_sst_drv*) ;
 int stub2 (struct intel_sst_drv*) ;
 int stub3 (struct intel_sst_drv*) ;
 int stub4 () ;

int sst_load_fw(struct intel_sst_drv *sst_drv_ctx)
{
 int ret_val = 0;
 struct sst_block *block;

 dev_dbg(sst_drv_ctx->dev, "sst_load_fw\n");

 if (sst_drv_ctx->sst_state != SST_RESET ||
   sst_drv_ctx->sst_state == SST_SHUTDOWN)
  return -EAGAIN;

 if (!sst_drv_ctx->fw_in_mem) {
  dev_dbg(sst_drv_ctx->dev, "sst: FW not in memory retry to download\n");
  ret_val = sst_request_fw(sst_drv_ctx);
  if (ret_val)
   return ret_val;
 }

 block = sst_create_block(sst_drv_ctx, 0, FW_DWNL_ID);
 if (block == ((void*)0))
  return -ENOMEM;


 pm_qos_update_request(sst_drv_ctx->qos, 0);

 sst_drv_ctx->sst_state = SST_FW_LOADING;

 ret_val = sst_drv_ctx->ops->reset(sst_drv_ctx);
 if (ret_val)
  goto restore;

 sst_do_memcpy(&sst_drv_ctx->memcpy_list);


 if (sst_drv_ctx->ops->post_download)
  sst_drv_ctx->ops->post_download(sst_drv_ctx);


 ret_val = sst_drv_ctx->ops->start(sst_drv_ctx);
 if (ret_val)
  goto restore;

 ret_val = sst_wait_timeout(sst_drv_ctx, block);
 if (ret_val) {
  dev_err(sst_drv_ctx->dev, "fw download failed %d\n" , ret_val);

  ret_val = -EBUSY;

 }


restore:

 pm_qos_update_request(sst_drv_ctx->qos, PM_QOS_DEFAULT_VALUE);
 sst_free_block(sst_drv_ctx, block);
 dev_dbg(sst_drv_ctx->dev, "fw load successful!!!\n");

 if (sst_drv_ctx->ops->restore_dsp_context)
  sst_drv_ctx->ops->restore_dsp_context();
 sst_drv_ctx->sst_state = SST_FW_RUNNING;
 return ret_val;
}
