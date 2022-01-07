
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct net_bridge_port {int dummy; } ;
struct TYPE_4__ {struct net_device* brdev; } ;


 TYPE_2__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int __br_forward (struct net_bridge_port const*,struct sk_buff*,int) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;

__attribute__((used)) static int deliver_clone(const struct net_bridge_port *prev,
    struct sk_buff *skb, bool local_orig)
{
 struct net_device *dev = BR_INPUT_SKB_CB(skb)->brdev;

 skb = skb_clone(skb, GFP_ATOMIC);
 if (!skb) {
  dev->stats.tx_dropped++;
  return -ENOMEM;
 }

 __br_forward(prev, skb, local_orig);
 return 0;
}
