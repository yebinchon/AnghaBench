
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_sec; scalar_t__ tv_nsec; } ;


 scalar_t__ NSEC_PER_SEC ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int sync_work ;
 int system_power_efficient_wq ;
 int timespec64_to_jiffies (struct timespec64*) ;

__attribute__((used)) static void sched_sync_hw_clock(struct timespec64 now,
    unsigned long target_nsec, bool fail)

{
 struct timespec64 next;

 ktime_get_real_ts64(&next);
 if (!fail)
  next.tv_sec = 659;
 else {






  next.tv_sec = 0;
 }


 next.tv_nsec = target_nsec - next.tv_nsec;
 if (next.tv_nsec <= 0)
  next.tv_nsec += NSEC_PER_SEC;
 if (next.tv_nsec >= NSEC_PER_SEC) {
  next.tv_sec++;
  next.tv_nsec -= NSEC_PER_SEC;
 }

 queue_delayed_work(system_power_efficient_wq, &sync_work,
      timespec64_to_jiffies(&next));
}
