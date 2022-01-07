
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct mpls_route {int dummy; } ;
struct mpls_nh {int nh_via_table; } ;


 int ENODEV ;
 struct net_device* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct net_device*) ;



 struct net_device* dev_get_by_index (struct net*,int) ;
 int dev_put (struct net_device*) ;
 struct net_device* inet6_fib_lookup_dev (struct net*,int ) ;
 struct net_device* inet_fib_lookup_dev (struct net*,int ) ;
 int mpls_nh_via (struct mpls_route*,struct mpls_nh*) ;

__attribute__((used)) static struct net_device *find_outdev(struct net *net,
          struct mpls_route *rt,
          struct mpls_nh *nh, int oif)
{
 struct net_device *dev = ((void*)0);

 if (!oif) {
  switch (nh->nh_via_table) {
  case 130:
   dev = inet_fib_lookup_dev(net, mpls_nh_via(rt, nh));
   break;
  case 128:
   dev = inet6_fib_lookup_dev(net, mpls_nh_via(rt, nh));
   break;
  case 129:
   break;
  }
 } else {
  dev = dev_get_by_index(net, oif);
 }

 if (!dev)
  return ERR_PTR(-ENODEV);

 if (IS_ERR(dev))
  return dev;


 dev_put(dev);

 return dev;
}
