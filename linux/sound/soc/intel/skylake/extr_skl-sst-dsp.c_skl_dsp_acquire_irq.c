
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_dsp_device {int thread; } ;
struct sst_dsp {int irq; int dev; TYPE_1__* ops; struct sst_dsp_device* sst_dev; } ;
struct TYPE_2__ {int irq_handler; } ;


 int IRQF_SHARED ;
 int dev_err (int ,char*,int ) ;
 int request_threaded_irq (int ,int ,int ,int ,char*,struct sst_dsp*) ;

int skl_dsp_acquire_irq(struct sst_dsp *sst)
{
 struct sst_dsp_device *sst_dev = sst->sst_dev;
 int ret;


 ret = request_threaded_irq(sst->irq, sst->ops->irq_handler,
  sst_dev->thread, IRQF_SHARED, "AudioDSP", sst);
 if (ret)
  dev_err(sst->dev, "unable to grab threaded IRQ %d, disabling device\n",
          sst->irq);

 return ret;
}
