
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_block {scalar_t__ ret_code; int condition; } ;
struct intel_sst_drv {int dev; int wait_queue; } ;


 int EBUSY ;
 int EINTR ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 int wait_event_interruptible (int ,int ) ;

int sst_wait_interruptible(struct intel_sst_drv *sst_drv_ctx,
    struct sst_block *block)
{
 int retval = 0;

 if (!wait_event_interruptible(sst_drv_ctx->wait_queue,
    block->condition)) {

  if (block->ret_code < 0) {
   dev_err(sst_drv_ctx->dev,
    "stream failed %d\n", block->ret_code);
   retval = -EBUSY;
  } else {
   dev_dbg(sst_drv_ctx->dev, "event up\n");
   retval = 0;
  }
 } else {
  dev_err(sst_drv_ctx->dev, "signal interrupted\n");
  retval = -EINTR;
 }
 return retval;

}
