
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_ops {int (* ndo_do_ioctl ) (struct net_device*,struct ifreq*,int) ;} ;
struct net_device {int name; struct net_device_ops* netdev_ops; } ;
struct ifreq {int ifr_ifru; int ifr_name; } ;
struct TYPE_2__ {struct net_device* real_dev; } ;


 int EOPNOTSUPP ;
 int IFNAMSIZ ;





 int dev_net (struct net_device*) ;
 int init_net ;
 int net_eq (int ,int *) ;
 int netif_device_present (struct net_device*) ;
 int strncpy (int ,int ,int ) ;
 int stub1 (struct net_device*,struct ifreq*,int) ;
 TYPE_1__* vlan_dev_priv (struct net_device*) ;

__attribute__((used)) static int vlan_dev_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct net_device *real_dev = vlan_dev_priv(dev)->real_dev;
 const struct net_device_ops *ops = real_dev->netdev_ops;
 struct ifreq ifrr;
 int err = -EOPNOTSUPP;

 strncpy(ifrr.ifr_name, real_dev->name, IFNAMSIZ);
 ifrr.ifr_ifru = ifr->ifr_ifru;

 switch (cmd) {
 case 129:
  if (!net_eq(dev_net(dev), &init_net))
   break;

 case 131:
 case 130:
 case 128:
 case 132:
  if (netif_device_present(real_dev) && ops->ndo_do_ioctl)
   err = ops->ndo_do_ioctl(real_dev, &ifrr, cmd);
  break;
 }

 if (!err)
  ifr->ifr_ifru = ifrr.ifr_ifru;

 return err;
}
