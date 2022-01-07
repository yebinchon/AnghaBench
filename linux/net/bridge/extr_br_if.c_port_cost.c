
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_2__ {int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;






 int __ethtool_get_link_ksettings (struct net_device*,struct ethtool_link_ksettings*) ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int port_cost(struct net_device *dev)
{
 struct ethtool_link_ksettings ecmd;

 if (!__ethtool_get_link_ksettings(dev, &ecmd)) {
  switch (ecmd.base.speed) {
  case 128:
   return 2;
  case 129:
   return 4;
  case 130:
   return 19;
  case 131:
   return 100;
  }
 }


 if (!strncmp(dev->name, "lec", 3))
  return 7;

 if (!strncmp(dev->name, "plip", 4))
  return 2500;

 return 100;
}
