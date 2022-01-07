
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 struct net* dev_net (int ) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;

__attribute__((used)) static inline struct net *ipv6_skb_net(struct sk_buff *skb)
{
 return skb_dst(skb) ? dev_net(skb_dst(skb)->dev) : dev_net(skb->dev);
}
