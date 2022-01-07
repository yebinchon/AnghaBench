
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct alarm_base {int (* gettime ) () ;} ;
struct alarm {size_t type; } ;
typedef int ktime_t ;


 struct alarm_base* alarm_bases ;
 int alarm_forward (struct alarm*,int ,int ) ;
 int stub1 () ;

u64 alarm_forward_now(struct alarm *alarm, ktime_t interval)
{
 struct alarm_base *base = &alarm_bases[alarm->type];

 return alarm_forward(alarm, base->gettime(), interval);
}
