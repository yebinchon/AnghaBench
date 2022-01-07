
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {size_t cardState; scalar_t__ setcnt; scalar_t__ playcnt; } ;


 int K1212_DEBUG_PRINTK (char*,int ,scalar_t__) ;
 scalar_t__ K1212_STATE_ERRORSTOP ;
 int K1212_STATE_OPEN ;
 int snd_korg1212_SendStop (struct snd_korg1212*) ;
 int snd_korg1212_setCardState (struct snd_korg1212*,int ) ;
 int * stateName ;

__attribute__((used)) static int snd_korg1212_StopPlay(struct snd_korg1212 * korg1212)
{
 K1212_DEBUG_PRINTK("K1212_DEBUG: StopPlay [%s] %d\n",
      stateName[korg1212->cardState], korg1212->playcnt);

        if (--(korg1212->playcnt))
  return 0;

 korg1212->setcnt = 0;

        if (korg1212->cardState != K1212_STATE_ERRORSTOP)
  snd_korg1212_SendStop(korg1212);

 snd_korg1212_setCardState(korg1212, K1212_STATE_OPEN);
        return 0;
}
