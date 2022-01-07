
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_dev {int dummy; } ;


 struct ncsi_dev_priv* TO_NCSI_DEV_PRIV (struct ncsi_dev*) ;
 struct net_device* dev_get_by_index (struct net*,int ) ;
 int dev_put (struct net_device*) ;
 struct ncsi_dev* ncsi_find_dev (struct net_device*) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static struct ncsi_dev_priv *ndp_from_ifindex(struct net *net, u32 ifindex)
{
 struct ncsi_dev_priv *ndp;
 struct net_device *dev;
 struct ncsi_dev *nd;
 struct ncsi_dev;

 if (!net)
  return ((void*)0);

 dev = dev_get_by_index(net, ifindex);
 if (!dev) {
  pr_err("NCSI netlink: No device for ifindex %u\n", ifindex);
  return ((void*)0);
 }

 nd = ncsi_find_dev(dev);
 ndp = nd ? TO_NCSI_DEV_PRIV(nd) : ((void*)0);

 dev_put(dev);
 return ndp;
}
