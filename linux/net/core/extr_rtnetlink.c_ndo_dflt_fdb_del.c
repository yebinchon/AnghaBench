
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nlattr {int dummy; } ;
struct net_device {int name; } ;
struct ndmsg {int ndm_state; } ;


 int EINVAL ;
 int NUD_PERMANENT ;
 int dev_mc_del (struct net_device*,unsigned char const*) ;
 int dev_uc_del (struct net_device*,unsigned char const*) ;
 scalar_t__ is_link_local_ether_addr (unsigned char const*) ;
 scalar_t__ is_multicast_ether_addr (unsigned char const*) ;
 scalar_t__ is_unicast_ether_addr (unsigned char const*) ;
 int pr_info (char*,int ) ;

int ndo_dflt_fdb_del(struct ndmsg *ndm,
       struct nlattr *tb[],
       struct net_device *dev,
       const unsigned char *addr, u16 vid)
{
 int err = -EINVAL;




 if (!(ndm->ndm_state & NUD_PERMANENT)) {
  pr_info("%s: FDB only supports static addresses\n", dev->name);
  return err;
 }

 if (is_unicast_ether_addr(addr) || is_link_local_ether_addr(addr))
  err = dev_uc_del(dev, addr);
 else if (is_multicast_ether_addr(addr))
  err = dev_mc_del(dev, addr);

 return err;
}
