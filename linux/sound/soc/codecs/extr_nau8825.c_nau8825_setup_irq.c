
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825 {int irq; int dev; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int dev_err (int ,char*,int ,int) ;
 int devm_request_threaded_irq (int ,int ,int *,int ,int,char*,struct nau8825*) ;
 int nau8825_interrupt ;

__attribute__((used)) static int nau8825_setup_irq(struct nau8825 *nau8825)
{
 int ret;

 ret = devm_request_threaded_irq(nau8825->dev, nau8825->irq, ((void*)0),
  nau8825_interrupt, IRQF_TRIGGER_LOW | IRQF_ONESHOT,
  "nau8825", nau8825);

 if (ret) {
  dev_err(nau8825->dev, "Cannot request irq %d (%d)\n",
   nau8825->irq, ret);
  return ret;
 }

 return 0;
}
