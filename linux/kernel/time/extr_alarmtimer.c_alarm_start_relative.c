
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alarm_base {int (* gettime ) () ;} ;
struct alarm {size_t type; } ;
typedef int ktime_t ;


 struct alarm_base* alarm_bases ;
 int alarm_start (struct alarm*,int ) ;
 int ktime_add_safe (int ,int ) ;
 int stub1 () ;

void alarm_start_relative(struct alarm *alarm, ktime_t start)
{
 struct alarm_base *base = &alarm_bases[alarm->type];

 start = ktime_add_safe(start, base->gettime());
 alarm_start(alarm, start);
}
