
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct net_bridge {TYPE_1__ gc_work; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int br_timer_value (int *) ;
 int sprintf (char*,char*,int ) ;
 struct net_bridge* to_bridge (struct device*) ;

__attribute__((used)) static ssize_t gc_timer_show(struct device *d, struct device_attribute *attr,
        char *buf)
{
 struct net_bridge *br = to_bridge(d);
 return sprintf(buf, "%ld\n", br_timer_value(&br->gc_work.timer));
}
