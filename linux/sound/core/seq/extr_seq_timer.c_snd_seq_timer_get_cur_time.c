
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timespec64 {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_4__ {int tv_sec; int tv_nsec; } ;
struct snd_seq_timer {int lock; int last_update; scalar_t__ running; TYPE_1__ cur_time; } ;
typedef TYPE_1__ snd_seq_real_time_t ;


 int ktime_get_ts64 (struct timespec64*) ;
 int snd_seq_sanity_real_time (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct timespec64 timespec64_sub (struct timespec64,int ) ;

snd_seq_real_time_t snd_seq_timer_get_cur_time(struct snd_seq_timer *tmr)
{
 snd_seq_real_time_t cur_time;
 unsigned long flags;

 spin_lock_irqsave(&tmr->lock, flags);
 cur_time = tmr->cur_time;
 if (tmr->running) {
  struct timespec64 tm;

  ktime_get_ts64(&tm);
  tm = timespec64_sub(tm, tmr->last_update);
  cur_time.tv_nsec += tm.tv_nsec;
  cur_time.tv_sec += tm.tv_sec;
  snd_seq_sanity_real_time(&cur_time);
 }
 spin_unlock_irqrestore(&tmr->lock, flags);
 return cur_time;
}
