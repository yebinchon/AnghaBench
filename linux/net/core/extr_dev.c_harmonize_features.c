
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; int dev; } ;
typedef int netdev_features_t ;
typedef int __be16 ;


 scalar_t__ CHECKSUM_NONE ;
 int NETIF_F_CSUM_MASK ;
 int NETIF_F_GSO_MASK ;
 int NETIF_F_SG ;
 int can_checksum_protocol (int,int ) ;
 scalar_t__ illegal_highdma (int ,struct sk_buff*) ;
 int net_mpls_features (struct sk_buff*,int,int ) ;
 int skb_network_protocol (struct sk_buff*,int*) ;

__attribute__((used)) static netdev_features_t harmonize_features(struct sk_buff *skb,
 netdev_features_t features)
{
 int tmp;
 __be16 type;

 type = skb_network_protocol(skb, &tmp);
 features = net_mpls_features(skb, features, type);

 if (skb->ip_summed != CHECKSUM_NONE &&
     !can_checksum_protocol(features, type)) {
  features &= ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
 }
 if (illegal_highdma(skb->dev, skb))
  features &= ~NETIF_F_SG;

 return features;
}
