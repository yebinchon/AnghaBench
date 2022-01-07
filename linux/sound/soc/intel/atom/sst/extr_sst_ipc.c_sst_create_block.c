
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct sst_block {int condition; int on; int node; void* drv_id; void* msg_id; } ;
struct intel_sst_drv {int block_lock; int block_list; int dev; } ;


 int GFP_KERNEL ;
 int dev_dbg (int ,char*) ;
 struct sst_block* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct sst_block *sst_create_block(struct intel_sst_drv *ctx,
     u32 msg_id, u32 drv_id)
{
 struct sst_block *msg = ((void*)0);

 dev_dbg(ctx->dev, "Enter\n");
 msg = kzalloc(sizeof(*msg), GFP_KERNEL);
 if (!msg)
  return ((void*)0);
 msg->condition = 0;
 msg->on = 1;
 msg->msg_id = msg_id;
 msg->drv_id = drv_id;
 spin_lock_bh(&ctx->block_lock);
 list_add_tail(&msg->node, &ctx->block_list);
 spin_unlock_bh(&ctx->block_lock);

 return msg;
}
