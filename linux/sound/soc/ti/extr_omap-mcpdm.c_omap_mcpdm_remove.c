
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct omap_mcpdm {int pm_qos_req; int dev; int irq; } ;


 int free_irq (int ,void*) ;
 int pm_qos_remove_request (int *) ;
 scalar_t__ pm_qos_request_active (int *) ;
 int pm_runtime_disable (int ) ;
 struct omap_mcpdm* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_mcpdm_remove(struct snd_soc_dai *dai)
{
 struct omap_mcpdm *mcpdm = snd_soc_dai_get_drvdata(dai);

 free_irq(mcpdm->irq, (void *)mcpdm);
 pm_runtime_disable(mcpdm->dev);

 if (pm_qos_request_active(&mcpdm->pm_qos_req))
  pm_qos_remove_request(&mcpdm->pm_qos_req);

 return 0;
}
