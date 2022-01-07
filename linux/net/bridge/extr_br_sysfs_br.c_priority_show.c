
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* prio; } ;
struct net_bridge {TYPE_1__ bridge_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct net_bridge* to_bridge (struct device*) ;

__attribute__((used)) static ssize_t priority_show(struct device *d, struct device_attribute *attr,
        char *buf)
{
 struct net_bridge *br = to_bridge(d);
 return sprintf(buf, "%d\n",
         (br->bridge_id.prio[0] << 8) | br->bridge_id.prio[1]);
}
