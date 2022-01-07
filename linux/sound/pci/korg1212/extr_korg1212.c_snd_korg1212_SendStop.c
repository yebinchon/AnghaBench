
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_korg1212 {int timer; scalar_t__ stop_pending_cnt; TYPE_1__* sharedBufferPtr; } ;
struct TYPE_2__ {int cardCommand; } ;


 scalar_t__ HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void snd_korg1212_SendStop(struct snd_korg1212 *korg1212)
{
 if (! korg1212->stop_pending_cnt) {
  korg1212->sharedBufferPtr->cardCommand = 0xffffffff;

  korg1212->stop_pending_cnt = HZ;
  mod_timer(&korg1212->timer, jiffies + 1);
 }
}
