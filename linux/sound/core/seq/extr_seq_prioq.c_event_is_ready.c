
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int time; int tick; } ;
struct snd_seq_event {int flags; TYPE_1__ time; } ;


 int SNDRV_SEQ_TIME_STAMP_MASK ;
 int SNDRV_SEQ_TIME_STAMP_TICK ;
 int snd_seq_compare_real_time (void*,int *) ;
 int snd_seq_compare_tick_time (void*,int *) ;

__attribute__((used)) static int event_is_ready(struct snd_seq_event *ev, void *current_time)
{
 if ((ev->flags & SNDRV_SEQ_TIME_STAMP_MASK) == SNDRV_SEQ_TIME_STAMP_TICK)
  return snd_seq_compare_tick_time(current_time, &ev->time.tick);
 else
  return snd_seq_compare_real_time(current_time, &ev->time.time);
}
