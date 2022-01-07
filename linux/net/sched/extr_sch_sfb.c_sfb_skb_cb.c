
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sfb_skb_cb {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int qdisc_cb_private_validate (struct sk_buff const*,int) ;
 TYPE_1__* qdisc_skb_cb (struct sk_buff const*) ;

__attribute__((used)) static inline struct sfb_skb_cb *sfb_skb_cb(const struct sk_buff *skb)
{
 qdisc_cb_private_validate(skb, sizeof(struct sfb_skb_cb));
 return (struct sfb_skb_cb *)qdisc_skb_cb(skb)->data;
}
