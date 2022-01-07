
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ offload_fwd_mark; } ;
struct net_bridge_port {scalar_t__ offload_fwd_mark; } ;
struct TYPE_2__ {scalar_t__ offload_fwd_mark; } ;


 TYPE_1__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 int WARN_ON_ONCE (int) ;

void nbp_switchdev_frame_mark(const struct net_bridge_port *p,
         struct sk_buff *skb)
{
 if (skb->offload_fwd_mark && !WARN_ON_ONCE(!p->offload_fwd_mark))
  BR_INPUT_SKB_CB(skb)->offload_fwd_mark = p->offload_fwd_mark;
}
