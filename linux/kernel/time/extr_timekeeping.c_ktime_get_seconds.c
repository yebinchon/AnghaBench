
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time64_t ;
struct timekeeper {int ktime_sec; } ;
struct TYPE_2__ {struct timekeeper timekeeper; } ;


 int WARN_ON (int ) ;
 int timekeeping_suspended ;
 TYPE_1__ tk_core ;

time64_t ktime_get_seconds(void)
{
 struct timekeeper *tk = &tk_core.timekeeper;

 WARN_ON(timekeeping_suspended);
 return tk->ktime_sec;
}
