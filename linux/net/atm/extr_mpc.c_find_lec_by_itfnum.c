
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int IFNAMSIZ ;
 struct net_device* dev_get_by_name (int *,char*) ;
 int init_net ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static struct net_device *find_lec_by_itfnum(int itf)
{
 struct net_device *dev;
 char name[IFNAMSIZ];

 sprintf(name, "lec%d", itf);
 dev = dev_get_by_name(&init_net, name);

 return dev;
}
