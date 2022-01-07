
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int forward_delay; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int jiffies_to_clock_t (int ) ;
 int sprintf (char*,char*,int ) ;
 struct net_bridge* to_bridge (struct device*) ;

__attribute__((used)) static ssize_t forward_delay_show(struct device *d,
      struct device_attribute *attr, char *buf)
{
 struct net_bridge *br = to_bridge(d);
 return sprintf(buf, "%lu\n", jiffies_to_clock_t(br->forward_delay));
}
