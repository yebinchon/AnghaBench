
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct device {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 struct net* dev_net (struct net_device*) ;
 int net_ns_get_ownership (struct net const*,int *,int *) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static void net_get_ownership(struct device *d, kuid_t *uid, kgid_t *gid)
{
 struct net_device *dev = to_net_dev(d);
 const struct net *net = dev_net(dev);

 net_ns_get_ownership(net, uid, gid);
}
