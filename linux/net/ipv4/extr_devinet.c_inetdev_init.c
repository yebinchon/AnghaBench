
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int flags; int ip_ptr; } ;
struct TYPE_6__ {int * sysctl; } ;
struct in_device {int dead; int refcnt; TYPE_2__ cnf; int arp_parms; struct net_device* dev; } ;
struct TYPE_5__ {int devconf_dflt; } ;
struct TYPE_7__ {TYPE_1__ ipv4; } ;


 int ASSERT_RTNL () ;
 int ENOMEM ;
 struct in_device* ERR_PTR (int) ;
 int FORWARDING ;
 int GFP_KERNEL ;
 int IFF_UP ;
 scalar_t__ IPV4_DEVCONF (TYPE_2__,int ) ;
 int arp_tbl ;
 int dev_disable_lro (struct net_device*) ;
 int dev_hold (struct net_device*) ;
 TYPE_3__* dev_net (struct net_device*) ;
 int devinet_sysctl_register (struct in_device*) ;
 int in_dev_put (struct in_device*) ;
 int ip_mc_init_dev (struct in_device*) ;
 int ip_mc_up (struct in_device*) ;
 int kfree (struct in_device*) ;
 struct in_device* kzalloc (int,int ) ;
 int memcpy (TYPE_2__*,int ,int) ;
 int neigh_parms_alloc (struct net_device*,int *) ;
 int rcu_assign_pointer (int ,struct in_device*) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct in_device *inetdev_init(struct net_device *dev)
{
 struct in_device *in_dev;
 int err = -ENOMEM;

 ASSERT_RTNL();

 in_dev = kzalloc(sizeof(*in_dev), GFP_KERNEL);
 if (!in_dev)
  goto out;
 memcpy(&in_dev->cnf, dev_net(dev)->ipv4.devconf_dflt,
   sizeof(in_dev->cnf));
 in_dev->cnf.sysctl = ((void*)0);
 in_dev->dev = dev;
 in_dev->arp_parms = neigh_parms_alloc(dev, &arp_tbl);
 if (!in_dev->arp_parms)
  goto out_kfree;
 if (IPV4_DEVCONF(in_dev->cnf, FORWARDING))
  dev_disable_lro(dev);

 dev_hold(dev);

 refcount_set(&in_dev->refcnt, 1);

 err = devinet_sysctl_register(in_dev);
 if (err) {
  in_dev->dead = 1;
  in_dev_put(in_dev);
  in_dev = ((void*)0);
  goto out;
 }
 ip_mc_init_dev(in_dev);
 if (dev->flags & IFF_UP)
  ip_mc_up(in_dev);


 rcu_assign_pointer(dev->ip_ptr, in_dev);
out:
 return in_dev ?: ERR_PTR(err);
out_kfree:
 kfree(in_dev);
 in_dev = ((void*)0);
 goto out;
}
