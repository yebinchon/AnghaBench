
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {int timeri; scalar_t__ running; } ;


 int EINVAL ;
 int snd_timer_pause (int ) ;

__attribute__((used)) static int seq_timer_stop(struct snd_seq_timer *tmr)
{
 if (! tmr->timeri)
  return -EINVAL;
 if (!tmr->running)
  return 0;
 tmr->running = 0;
 snd_timer_pause(tmr->timeri);
 return 0;
}
