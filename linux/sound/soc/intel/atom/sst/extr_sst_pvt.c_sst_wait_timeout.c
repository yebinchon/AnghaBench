
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_block {int condition; int ret_code; int on; int msg_id; int drv_id; } ;
struct intel_sst_drv {int sst_state; int dev; int wait_queue; } ;


 int EBUSY ;
 int SST_BLOCK_TIMEOUT ;
 int SST_RESET ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_err (int ,char*,int,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 scalar_t__ wait_event_timeout (int ,int,int ) ;

int sst_wait_timeout(struct intel_sst_drv *sst_drv_ctx, struct sst_block *block)
{
 int retval = 0;






 dev_dbg(sst_drv_ctx->dev,
  "waiting for condition %x ipc %d drv_id %d\n",
  block->condition, block->msg_id, block->drv_id);
 if (wait_event_timeout(sst_drv_ctx->wait_queue,
    block->condition,
    msecs_to_jiffies(SST_BLOCK_TIMEOUT))) {

  dev_dbg(sst_drv_ctx->dev, "Event wake %x\n",
    block->condition);
  dev_dbg(sst_drv_ctx->dev, "message ret: %d\n",
    block->ret_code);
  retval = -block->ret_code;
 } else {
  block->on = 0;
  dev_err(sst_drv_ctx->dev,
   "Wait timed-out condition:%#x, msg_id:%#x fw_state %#x\n",
   block->condition, block->msg_id, sst_drv_ctx->sst_state);
  sst_drv_ctx->sst_state = SST_RESET;

  retval = -EBUSY;
 }
 return retval;
}
