
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BR_BOOLOPT_NO_LL_LEARN ;
 int br_boolopt_get (struct net_bridge*,int ) ;
 int sprintf (char*,char*,int) ;
 struct net_bridge* to_bridge (struct device*) ;

__attribute__((used)) static ssize_t no_linklocal_learn_show(struct device *d,
           struct device_attribute *attr,
           char *buf)
{
 struct net_bridge *br = to_bridge(d);
 return sprintf(buf, "%d\n", br_boolopt_get(br, BR_BOOLOPT_NO_LL_LEARN));
}
