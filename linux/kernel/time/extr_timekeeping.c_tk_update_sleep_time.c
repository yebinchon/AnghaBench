
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timekeeper {int offs_boot; int monotonic_to_boot; } ;
typedef int ktime_t ;


 int ktime_add (int ,int ) ;
 int ktime_to_timespec64 (int ) ;

__attribute__((used)) static inline void tk_update_sleep_time(struct timekeeper *tk, ktime_t delta)
{
 tk->offs_boot = ktime_add(tk->offs_boot, delta);




 tk->monotonic_to_boot = ktime_to_timespec64(tk->offs_boot);
}
