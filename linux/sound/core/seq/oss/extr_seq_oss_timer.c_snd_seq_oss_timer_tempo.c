
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_timer {int oss_tempo; int tempo; int dp; scalar_t__ running; } ;


 int MAX_OSS_TEMPO ;
 int MIN_OSS_TEMPO ;
 int SNDRV_SEQ_EVENT_TEMPO ;
 int calc_alsa_tempo (struct seq_oss_timer*) ;
 int send_timer_event (int ,int ,int ) ;

int
snd_seq_oss_timer_tempo(struct seq_oss_timer *timer, int value)
{
 if (value < MIN_OSS_TEMPO)
  value = MIN_OSS_TEMPO;
 else if (value > MAX_OSS_TEMPO)
  value = MAX_OSS_TEMPO;
 timer->oss_tempo = value;
 calc_alsa_tempo(timer);
 if (timer->running)
  send_timer_event(timer->dp, SNDRV_SEQ_EVENT_TEMPO, timer->tempo);
 return 0;
}
