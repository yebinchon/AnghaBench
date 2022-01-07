
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ addr_len; int flags; } ;
struct net {int dummy; } ;
struct mpls_route {int dummy; } ;
struct mpls_nh {scalar_t__ nh_via_table; scalar_t__ nh_via_alen; int nh_flags; int nh_dev; } ;


 int EINVAL ;
 int ENODEV ;
 unsigned int IFF_LOWER_UP ;
 unsigned int IFF_RUNNING ;
 int IFF_UP ;
 scalar_t__ IS_ERR (struct net_device*) ;
 scalar_t__ NEIGH_LINK_TABLE ;
 int PTR_ERR (struct net_device*) ;
 int RCU_INIT_POINTER (int ,struct net_device*) ;
 int RTNH_F_DEAD ;
 int RTNH_F_LINKDOWN ;
 unsigned int dev_get_flags (struct net_device*) ;
 struct net_device* find_outdev (struct net*,struct mpls_route*,struct mpls_nh*,int) ;
 int mpls_dev_get (struct net_device*) ;

__attribute__((used)) static int mpls_nh_assign_dev(struct net *net, struct mpls_route *rt,
         struct mpls_nh *nh, int oif)
{
 struct net_device *dev = ((void*)0);
 int err = -ENODEV;

 dev = find_outdev(net, rt, nh, oif);
 if (IS_ERR(dev)) {
  err = PTR_ERR(dev);
  dev = ((void*)0);
  goto errout;
 }


 err = -EINVAL;
 if (!mpls_dev_get(dev))
  goto errout;

 if ((nh->nh_via_table == NEIGH_LINK_TABLE) &&
     (dev->addr_len != nh->nh_via_alen))
  goto errout;

 RCU_INIT_POINTER(nh->nh_dev, dev);

 if (!(dev->flags & IFF_UP)) {
  nh->nh_flags |= RTNH_F_DEAD;
 } else {
  unsigned int flags;

  flags = dev_get_flags(dev);
  if (!(flags & (IFF_RUNNING | IFF_LOWER_UP)))
   nh->nh_flags |= RTNH_F_LINKDOWN;
 }

 return 0;

errout:
 return err;
}
