
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int notifier; } ;
struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;

void snd_soc_jack_notifier_unregister(struct snd_soc_jack *jack,
          struct notifier_block *nb)
{
 blocking_notifier_chain_unregister(&jack->notifier, nb);
}
