
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {size_t cardState; int open_mutex; int opencnt; } ;


 int K1212_DEBUG_PRINTK (char*,int ,int ) ;
 int K1212_STATE_OPEN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_korg1212_TurnOffIdleMonitor (struct snd_korg1212*) ;
 int snd_korg1212_setCardState (struct snd_korg1212*,int ) ;
 int * stateName ;

__attribute__((used)) static int snd_korg1212_OpenCard(struct snd_korg1212 * korg1212)
{
 K1212_DEBUG_PRINTK("K1212_DEBUG: OpenCard [%s] %d\n",
      stateName[korg1212->cardState], korg1212->opencnt);
 mutex_lock(&korg1212->open_mutex);
        if (korg1212->opencnt++ == 0) {
  snd_korg1212_TurnOffIdleMonitor(korg1212);
  snd_korg1212_setCardState(korg1212, K1212_STATE_OPEN);
 }

 mutex_unlock(&korg1212->open_mutex);
        return 1;
}
