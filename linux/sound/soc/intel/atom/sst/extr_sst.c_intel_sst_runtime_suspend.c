
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_sst_drv {scalar_t__ sst_state; TYPE_1__* ops; int post_msg_wq; int irq_num; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* reset ) (struct intel_sst_drv*) ;scalar_t__ (* save_dsp_context ) (struct intel_sst_drv*) ;} ;


 int EBUSY ;
 scalar_t__ SST_RESET ;
 int dev_dbg (struct device*,char*) ;
 struct intel_sst_drv* dev_get_drvdata (struct device*) ;
 int flush_workqueue (int ) ;
 int sst_set_fw_state_locked (struct intel_sst_drv*,scalar_t__) ;
 scalar_t__ stub1 (struct intel_sst_drv*) ;
 int stub2 (struct intel_sst_drv*) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int intel_sst_runtime_suspend(struct device *dev)
{
 int ret = 0;
 struct intel_sst_drv *ctx = dev_get_drvdata(dev);

 if (ctx->sst_state == SST_RESET) {
  dev_dbg(dev, "LPE is already in RESET state, No action\n");
  return 0;
 }

 if (ctx->ops->save_dsp_context(ctx))
  return -EBUSY;


 sst_set_fw_state_locked(ctx, SST_RESET);

 synchronize_irq(ctx->irq_num);
 flush_workqueue(ctx->post_msg_wq);

 ctx->ops->reset(ctx);

 return ret;
}
