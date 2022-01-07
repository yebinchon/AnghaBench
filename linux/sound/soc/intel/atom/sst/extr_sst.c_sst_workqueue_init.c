
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {int post_msg_wq; int wait_queue; int ipc_post_msg_wq; int block_list; int ipc_dispatch_list; int rx_list; int memcpy_list; } ;


 int EBUSY ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 int init_waitqueue_head (int *) ;
 int sst_process_pending_msg ;

__attribute__((used)) static int sst_workqueue_init(struct intel_sst_drv *ctx)
{
 INIT_LIST_HEAD(&ctx->memcpy_list);
 INIT_LIST_HEAD(&ctx->rx_list);
 INIT_LIST_HEAD(&ctx->ipc_dispatch_list);
 INIT_LIST_HEAD(&ctx->block_list);
 INIT_WORK(&ctx->ipc_post_msg_wq, sst_process_pending_msg);
 init_waitqueue_head(&ctx->wait_queue);

 ctx->post_msg_wq =
  create_singlethread_workqueue("sst_post_msg_wq");
 if (!ctx->post_msg_wq)
  return -EBUSY;
 return 0;
}
