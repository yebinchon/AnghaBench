
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time64_t ;
struct timekeeper {int xtime_sec; } ;
struct TYPE_2__ {struct timekeeper timekeeper; } ;


 TYPE_1__ tk_core ;

time64_t __ktime_get_real_seconds(void)
{
 struct timekeeper *tk = &tk_core.timekeeper;

 return tk->xtime_sec;
}
