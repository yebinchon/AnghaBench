
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_timer {int running; int dp; } ;


 int SNDRV_SEQ_EVENT_CONTINUE ;
 int send_timer_event (int ,int ,int ) ;

int
snd_seq_oss_timer_continue(struct seq_oss_timer *timer)
{
 if (timer->running)
  return 0;
 send_timer_event(timer->dp, SNDRV_SEQ_EVENT_CONTINUE, 0);
 timer->running = 1;
 return 0;
}
