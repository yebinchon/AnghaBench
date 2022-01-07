
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {struct mtpav* private_data; } ;
struct mtpav {scalar_t__ istimer; scalar_t__ irq; int res_port; int spinlock; } ;


 int free_irq (scalar_t__,void*) ;
 int release_and_free_resource (int ) ;
 int snd_mtpav_remove_output_timer (struct mtpav*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_mtpav_free(struct snd_card *card)
{
 struct mtpav *crd = card->private_data;
 unsigned long flags;

 spin_lock_irqsave(&crd->spinlock, flags);
 if (crd->istimer > 0)
  snd_mtpav_remove_output_timer(crd);
 spin_unlock_irqrestore(&crd->spinlock, flags);
 if (crd->irq >= 0)
  free_irq(crd->irq, (void *)crd);
 release_and_free_resource(crd->res_port);
}
