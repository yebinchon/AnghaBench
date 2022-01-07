
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int time; int tick; } ;
struct snd_seq_event {int flags; TYPE_1__ time; } ;


 int SNDRV_SEQ_TIME_STAMP_MASK ;
 int SNDRV_SEQ_TIME_STAMP_TICK ;
 int snd_seq_compare_real_time (int *,int *) ;
 int snd_seq_compare_tick_time (int *,int *) ;

__attribute__((used)) static inline int compare_timestamp(struct snd_seq_event *a,
        struct snd_seq_event *b)
{
 if ((a->flags & SNDRV_SEQ_TIME_STAMP_MASK) == SNDRV_SEQ_TIME_STAMP_TICK) {

  return (snd_seq_compare_tick_time(&a->time.tick, &b->time.tick));
 } else {

  return (snd_seq_compare_real_time(&a->time.time, &b->time.time));
 }
}
