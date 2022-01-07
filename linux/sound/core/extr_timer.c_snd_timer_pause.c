
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_instance {int flags; } ;


 int SNDRV_TIMER_IFLG_SLAVE ;
 int snd_timer_stop1 (struct snd_timer_instance*,int) ;
 int snd_timer_stop_slave (struct snd_timer_instance*,int) ;

int snd_timer_pause(struct snd_timer_instance * timeri)
{
 if (timeri->flags & SNDRV_TIMER_IFLG_SLAVE)
  return snd_timer_stop_slave(timeri, 0);
 else
  return snd_timer_stop1(timeri, 0);
}
