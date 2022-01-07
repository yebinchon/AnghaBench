
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_4__ {scalar_t__ tick; TYPE_1__ time; } ;
struct snd_seq_event {int flags; TYPE_2__ time; } ;


 int SNDRV_SEQ_TIME_STAMP_MASK ;
 int SNDRV_SEQ_TIME_STAMP_TICK ;

__attribute__((used)) static inline int compare_timestamp_rel(struct snd_seq_event *a,
     struct snd_seq_event *b)
{
 if ((a->flags & SNDRV_SEQ_TIME_STAMP_MASK) == SNDRV_SEQ_TIME_STAMP_TICK) {

  if (a->time.tick > b->time.tick)
   return 1;
  else if (a->time.tick == b->time.tick)
   return 0;
  else
   return -1;
 } else {

  if (a->time.time.tv_sec > b->time.time.tv_sec)
   return 1;
  else if (a->time.time.tv_sec == b->time.time.tv_sec) {
   if (a->time.time.tv_nsec > b->time.time.tv_nsec)
    return 1;
   else if (a->time.time.tv_nsec == b->time.time.tv_nsec)
    return 0;
   else
    return -1;
  } else
   return -1;
 }
}
