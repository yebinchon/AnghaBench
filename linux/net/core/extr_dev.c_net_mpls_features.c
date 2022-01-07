
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int netdev_features_t ;
typedef int __be16 ;



__attribute__((used)) static netdev_features_t net_mpls_features(struct sk_buff *skb,
        netdev_features_t features,
        __be16 type)
{
 return features;
}
