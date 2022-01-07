
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mtu; } ;


 scalar_t__ TIPC_MIN_BEARER_MTU ;
 int netdev_warn (struct net_device*,char*) ;

__attribute__((used)) static inline bool tipc_mtu_bad(struct net_device *dev, unsigned int reserve)
{
 if (dev->mtu >= TIPC_MIN_BEARER_MTU + reserve)
  return 0;
 netdev_warn(dev, "MTU too low for tipc bearer\n");
 return 1;
}
