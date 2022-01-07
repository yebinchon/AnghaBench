
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_slave_priv {TYPE_2__* dp; } ;
struct TYPE_4__ {int index; int pl; struct dsa_switch* ds; } ;
struct TYPE_3__ {int (* port_hwtstamp_get ) (struct dsa_switch*,int,struct ifreq*) ;int (* port_hwtstamp_set ) (struct dsa_switch*,int,struct ifreq*) ;} ;




 struct dsa_slave_priv* netdev_priv (struct net_device*) ;
 int phylink_mii_ioctl (int ,struct ifreq*,int) ;
 int stub1 (struct dsa_switch*,int,struct ifreq*) ;
 int stub2 (struct dsa_switch*,int,struct ifreq*) ;

__attribute__((used)) static int dsa_slave_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 struct dsa_switch *ds = p->dp->ds;
 int port = p->dp->index;


 switch (cmd) {
 case 129:
  if (ds->ops->port_hwtstamp_get)
   return ds->ops->port_hwtstamp_get(ds, port, ifr);
  break;
 case 128:
  if (ds->ops->port_hwtstamp_set)
   return ds->ops->port_hwtstamp_set(ds, port, ifr);
  break;
 }

 return phylink_mii_ioctl(p->dp->pl, ifr, cmd);
}
