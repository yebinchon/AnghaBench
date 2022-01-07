
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge {int dummy; } ;
typedef int netdev_features_t ;


 int br_features_recompute (struct net_bridge*,int ) ;
 struct net_bridge* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_features_t br_fix_features(struct net_device *dev,
 netdev_features_t features)
{
 struct net_bridge *br = netdev_priv(dev);

 return br_features_recompute(br, features);
}
