
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int gso_type; } ;


 int EINVAL ;
 struct sk_buff* ERR_PTR (int ) ;
 int SKB_GSO_IPXIP4 ;
 struct sk_buff* ipv6_gso_segment (struct sk_buff*,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *sit_gso_segment(struct sk_buff *skb,
           netdev_features_t features)
{
 if (!(skb_shinfo(skb)->gso_type & SKB_GSO_IPXIP4))
  return ERR_PTR(-EINVAL);

 return ipv6_gso_segment(skb, features);
}
