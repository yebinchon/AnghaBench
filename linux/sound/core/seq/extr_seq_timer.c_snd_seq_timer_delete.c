
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {scalar_t__ running; } ;


 int kfree (struct snd_seq_timer*) ;
 int pr_debug (char*) ;
 int snd_seq_timer_reset (struct snd_seq_timer*) ;
 int snd_seq_timer_stop (struct snd_seq_timer*) ;

void snd_seq_timer_delete(struct snd_seq_timer **tmr)
{
 struct snd_seq_timer *t = *tmr;
 *tmr = ((void*)0);

 if (t == ((void*)0)) {
  pr_debug("ALSA: seq: snd_seq_timer_delete() called with NULL timer\n");
  return;
 }
 t->running = 0;


 snd_seq_timer_stop(t);
 snd_seq_timer_reset(t);

 kfree(t);
}
