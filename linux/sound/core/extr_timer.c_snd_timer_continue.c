
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_instance {int flags; } ;


 int EINVAL ;
 int SNDRV_TIMER_IFLG_PAUSED ;
 int SNDRV_TIMER_IFLG_SLAVE ;
 int snd_timer_start1 (struct snd_timer_instance*,int,int ) ;
 int snd_timer_start_slave (struct snd_timer_instance*,int) ;

int snd_timer_continue(struct snd_timer_instance *timeri)
{

 if (!(timeri->flags & SNDRV_TIMER_IFLG_PAUSED))
  return -EINVAL;

 if (timeri->flags & SNDRV_TIMER_IFLG_SLAVE)
  return snd_timer_start_slave(timeri, 0);
 else
  return snd_timer_start1(timeri, 0, 0);
}
