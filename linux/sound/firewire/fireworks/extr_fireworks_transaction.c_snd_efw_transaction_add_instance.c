
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int dummy; } ;


 unsigned int SNDRV_CARDS ;
 struct snd_efw** instances ;
 int instances_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void snd_efw_transaction_add_instance(struct snd_efw *efw)
{
 unsigned int i;

 spin_lock_irq(&instances_lock);

 for (i = 0; i < SNDRV_CARDS; i++) {
  if (instances[i] != ((void*)0))
   continue;
  instances[i] = efw;
  break;
 }

 spin_unlock_irq(&instances_lock);
}
