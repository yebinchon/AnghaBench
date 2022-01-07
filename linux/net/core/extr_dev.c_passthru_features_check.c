
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;



netdev_features_t passthru_features_check(struct sk_buff *skb,
       struct net_device *dev,
       netdev_features_t features)
{
 return features;
}
