
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ list_len; int * dst; int * src; } ;
struct intel_sst_drv {int * fw_in_mem; TYPE_1__ fw_sg_list; int qos; int post_msg_wq; TYPE_2__* dev; } ;
struct TYPE_6__ {int kobj; } ;


 int SST_SHUTDOWN ;
 int destroy_workqueue (int ) ;
 int flush_scheduled_work () ;
 int kfree (int *) ;
 int pm_qos_remove_request (int ) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_get_noresume (TYPE_2__*) ;
 int sst_fw_version_attr_group ;
 int sst_memcpy_free_resources (struct intel_sst_drv*) ;
 int sst_set_fw_state_locked (struct intel_sst_drv*,int ) ;
 int sst_unregister (TYPE_2__*) ;
 int sysfs_remove_group (int *,int *) ;

void sst_context_cleanup(struct intel_sst_drv *ctx)
{
 pm_runtime_get_noresume(ctx->dev);
 pm_runtime_disable(ctx->dev);
 sst_unregister(ctx->dev);
 sst_set_fw_state_locked(ctx, SST_SHUTDOWN);
 sysfs_remove_group(&ctx->dev->kobj, &sst_fw_version_attr_group);
 flush_scheduled_work();
 destroy_workqueue(ctx->post_msg_wq);
 pm_qos_remove_request(ctx->qos);
 kfree(ctx->fw_sg_list.src);
 kfree(ctx->fw_sg_list.dst);
 ctx->fw_sg_list.list_len = 0;
 kfree(ctx->fw_in_mem);
 ctx->fw_in_mem = ((void*)0);
 sst_memcpy_free_resources(ctx);
 ctx = ((void*)0);
}
