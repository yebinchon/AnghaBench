
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct stream_info {int lock; int pipe_id; } ;
struct pm_qos_request {int dummy; } ;
struct TYPE_18__ {int max_streams; } ;
struct TYPE_13__ {scalar_t__ ipcd; scalar_t__ ipcx; } ;
struct intel_sst_drv {int pvt_id; int post_msg_wq; TYPE_5__* dev; int firmware_name; int qos; int shim; int irq_num; TYPE_4__* ops; struct stream_info* streams; TYPE_7__ info; TYPE_3__* pdata; TYPE_1__ ipc_reg; int mailbox_recv_offset; scalar_t__ use_lli; scalar_t__ use_dma; int * fw_in_mem; scalar_t__ stream_cnt; } ;
struct TYPE_17__ {int kobj; } ;
struct TYPE_16__ {int irq_thread; int interrupt; } ;
struct TYPE_15__ {TYPE_2__* ipc_info; int probe_data; } ;
struct TYPE_14__ {scalar_t__ ipc_offset; int mbox_recv_off; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PIPE_RSVD ;
 int PM_QOS_CPU_DMA_LATENCY ;
 int PM_QOS_DEFAULT_VALUE ;
 int SST_DRV_NAME ;
 int SST_IMRX ;
 scalar_t__ SST_IPCD ;
 scalar_t__ SST_IPCX ;
 int SST_RESET ;
 int THIS_MODULE ;
 int destroy_workqueue (int ) ;
 int dev_dbg (TYPE_5__*,char*,int ) ;
 int dev_err (TYPE_5__*,char*,...) ;
 int dev_info (TYPE_5__*,char*,int) ;
 int devm_kzalloc (TYPE_5__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_5__*,int ,int ,int ,int ,int ,struct intel_sst_drv*) ;
 int memcpy (TYPE_7__*,int ,int) ;
 int memset (struct stream_info*,int ,int) ;
 int mutex_init (int *) ;
 int pm_qos_add_request (int ,int ,int ) ;
 int request_firmware_nowait (int ,int,int ,TYPE_5__*,int ,struct intel_sst_drv*,int ) ;
 int sst_driver_ops (struct intel_sst_drv*) ;
 int sst_firmware_load_cb ;
 int sst_fw_version_attr_group ;
 int sst_init_locks (struct intel_sst_drv*) ;
 int sst_register (TYPE_5__*) ;
 int sst_set_fw_state_locked (struct intel_sst_drv*,int ) ;
 int sst_shim_write64 (int ,int ,int) ;
 scalar_t__ sst_workqueue_init (struct intel_sst_drv*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

int sst_context_init(struct intel_sst_drv *ctx)
{
 int ret = 0, i;

 if (!ctx->pdata)
  return -EINVAL;

 if (!ctx->pdata->probe_data)
  return -EINVAL;

 memcpy(&ctx->info, ctx->pdata->probe_data, sizeof(ctx->info));

 ret = sst_driver_ops(ctx);
 if (ret != 0)
  return -EINVAL;

 sst_init_locks(ctx);
 sst_set_fw_state_locked(ctx, SST_RESET);


 ctx->pvt_id = 1;
 ctx->stream_cnt = 0;
 ctx->fw_in_mem = ((void*)0);

 ctx->use_dma = 0;
 ctx->use_lli = 0;

 if (sst_workqueue_init(ctx))
  return -EINVAL;

 ctx->mailbox_recv_offset = ctx->pdata->ipc_info->mbox_recv_off;
 ctx->ipc_reg.ipcx = SST_IPCX + ctx->pdata->ipc_info->ipc_offset;
 ctx->ipc_reg.ipcd = SST_IPCD + ctx->pdata->ipc_info->ipc_offset;

 dev_info(ctx->dev, "Got drv data max stream %d\n",
    ctx->info.max_streams);

 for (i = 1; i <= ctx->info.max_streams; i++) {
  struct stream_info *stream = &ctx->streams[i];

  memset(stream, 0, sizeof(*stream));
  stream->pipe_id = PIPE_RSVD;
  mutex_init(&stream->lock);
 }


 ret = devm_request_threaded_irq(ctx->dev, ctx->irq_num, ctx->ops->interrupt,
     ctx->ops->irq_thread, 0, SST_DRV_NAME,
     ctx);
 if (ret)
  goto do_free_mem;

 dev_dbg(ctx->dev, "Registered IRQ %#x\n", ctx->irq_num);


 sst_shim_write64(ctx->shim, SST_IMRX, 0xFFFF0038);

 ctx->qos = devm_kzalloc(ctx->dev,
  sizeof(struct pm_qos_request), GFP_KERNEL);
 if (!ctx->qos) {
  ret = -ENOMEM;
  goto do_free_mem;
 }
 pm_qos_add_request(ctx->qos, PM_QOS_CPU_DMA_LATENCY,
    PM_QOS_DEFAULT_VALUE);

 dev_dbg(ctx->dev, "Requesting FW %s now...\n", ctx->firmware_name);
 ret = request_firmware_nowait(THIS_MODULE, 1, ctx->firmware_name,
          ctx->dev, GFP_KERNEL, ctx, sst_firmware_load_cb);
 if (ret) {
  dev_err(ctx->dev, "Firmware download failed:%d\n", ret);
  goto do_free_mem;
 }

 ret = sysfs_create_group(&ctx->dev->kobj,
     &sst_fw_version_attr_group);
 if (ret) {
  dev_err(ctx->dev,
   "Unable to create sysfs\n");
  goto err_sysfs;
 }

 sst_register(ctx->dev);
 return 0;
err_sysfs:
 sysfs_remove_group(&ctx->dev->kobj, &sst_fw_version_attr_group);

do_free_mem:
 destroy_workqueue(ctx->post_msg_wq);
 return ret;
}
