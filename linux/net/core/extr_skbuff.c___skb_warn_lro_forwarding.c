
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int net_warn_ratelimited (char*,int ) ;

void __skb_warn_lro_forwarding(const struct sk_buff *skb)
{
 net_warn_ratelimited("%s: received packets cannot be forwarded while LRO is enabled\n",
        skb->dev->name);
}
