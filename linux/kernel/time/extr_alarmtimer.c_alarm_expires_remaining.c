
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alarm_base {int (* gettime ) () ;} ;
struct TYPE_2__ {int expires; } ;
struct alarm {size_t type; TYPE_1__ node; } ;
typedef int ktime_t ;


 struct alarm_base* alarm_bases ;
 int ktime_sub (int ,int ) ;
 int stub1 () ;

ktime_t alarm_expires_remaining(const struct alarm *alarm)
{
 struct alarm_base *base = &alarm_bases[alarm->type];
 return ktime_sub(alarm->node.expires, base->gettime());
}
