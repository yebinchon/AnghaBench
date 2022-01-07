
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct nau8824 {int irq; int dev; int jdet_work; struct snd_soc_jack* jack; } ;


 int INIT_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int dev_err (int ,char*,int ,int) ;
 int devm_request_threaded_irq (int ,int ,int *,int ,int,char*,struct nau8824*) ;
 int nau8824_interrupt ;
 int nau8824_jdet_work ;
 struct nau8824* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int nau8824_enable_jack_detect(struct snd_soc_component *component,
 struct snd_soc_jack *jack)
{
 struct nau8824 *nau8824 = snd_soc_component_get_drvdata(component);
 int ret;

 nau8824->jack = jack;

 INIT_WORK(&nau8824->jdet_work, nau8824_jdet_work);
 ret = devm_request_threaded_irq(nau8824->dev, nau8824->irq, ((void*)0),
  nau8824_interrupt, IRQF_TRIGGER_LOW | IRQF_ONESHOT,
  "nau8824", nau8824);
 if (ret) {
  dev_err(nau8824->dev, "Cannot request irq %d (%d)\n",
   nau8824->irq, ret);
 }

 return ret;
}
