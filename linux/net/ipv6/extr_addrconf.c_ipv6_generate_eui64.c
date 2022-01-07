
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int type; } ;
 int addrconf_ifid_6lowpan (int *,struct net_device*) ;
 int addrconf_ifid_arcnet (int *,struct net_device*) ;
 int addrconf_ifid_eui48 (int *,struct net_device*) ;
 int addrconf_ifid_gre (int *,struct net_device*) ;
 int addrconf_ifid_ieee1394 (int *,struct net_device*) ;
 int addrconf_ifid_infiniband (int *,struct net_device*) ;
 int addrconf_ifid_ip6tnl (int *,struct net_device*) ;
 int addrconf_ifid_sit (int *,struct net_device*) ;

__attribute__((used)) static int ipv6_generate_eui64(u8 *eui, struct net_device *dev)
{
 switch (dev->type) {
 case 137:
 case 136:
  return addrconf_ifid_eui48(eui, dev);
 case 138:
  return addrconf_ifid_arcnet(eui, dev);
 case 134:
  return addrconf_ifid_infiniband(eui, dev);
 case 130:
  return addrconf_ifid_sit(eui, dev);
 case 132:
 case 129:
  return addrconf_ifid_gre(eui, dev);
 case 139:
  return addrconf_ifid_6lowpan(eui, dev);
 case 135:
  return addrconf_ifid_ieee1394(eui, dev);
 case 128:
 case 133:
 case 131:
  return addrconf_ifid_ip6tnl(eui, dev);
 }
 return -1;
}
