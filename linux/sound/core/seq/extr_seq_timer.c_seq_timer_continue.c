
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {int running; int last_update; int ticks; int timeri; int initialized; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ initialize_timer (struct snd_seq_timer*) ;
 int ktime_get_ts64 (int *) ;
 int seq_timer_reset (struct snd_seq_timer*) ;
 int snd_timer_start (int ,int ) ;

__attribute__((used)) static int seq_timer_continue(struct snd_seq_timer *tmr)
{
 if (! tmr->timeri)
  return -EINVAL;
 if (tmr->running)
  return -EBUSY;
 if (! tmr->initialized) {
  seq_timer_reset(tmr);
  if (initialize_timer(tmr) < 0)
   return -EINVAL;
 }
 snd_timer_start(tmr->timeri, tmr->ticks);
 tmr->running = 1;
 ktime_get_ts64(&tmr->last_update);
 return 0;
}
