
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct timekeeper {int offs_boot; int offs_real; } ;
typedef int ktime_t ;
struct TYPE_2__ {struct timekeeper timekeeper; } ;


 int ktime_sub (int ,int ) ;
 struct timespec64 ktime_to_timespec64 (int ) ;
 TYPE_1__ tk_core ;

void getboottime64(struct timespec64 *ts)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 ktime_t t = ktime_sub(tk->offs_real, tk->offs_boot);

 *ts = ktime_to_timespec64(t);
}
