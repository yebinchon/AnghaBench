
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sk_buff {scalar_t__ pkt_type; TYPE_6__* dev; } ;
struct nf_hook_state {TYPE_4__* net; int in; } ;
struct net_bridge_port {scalar_t__ state; TYPE_3__* br; } ;
struct TYPE_14__ {int br_netfilter_broute; } ;
struct TYPE_13__ {int dev_addr; } ;
struct TYPE_12__ {unsigned char* h_dest; } ;
struct TYPE_8__ {int broute_table; } ;
struct TYPE_11__ {TYPE_1__ xt; } ;
struct TYPE_10__ {TYPE_2__* dev; } ;
struct TYPE_9__ {int dev_addr; } ;


 TYPE_7__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 scalar_t__ BR_STATE_FORWARDING ;
 int NFPROTO_BRIDGE ;
 unsigned int NF_ACCEPT ;
 int NF_BR_BROUTING ;
 int NF_DROP ;
 scalar_t__ PACKET_HOST ;
 scalar_t__ PACKET_OTHERHOST ;
 struct net_bridge_port* br_port_get_rcu (TYPE_6__*) ;
 int ebt_do_table (struct sk_buff*,struct nf_hook_state*,int ) ;
 TYPE_5__* eth_hdr (struct sk_buff*) ;
 scalar_t__ ether_addr_equal (int ,unsigned char*) ;
 int nf_hook_state_init (struct nf_hook_state*,int ,int ,int ,int *,int *,TYPE_4__*,int *) ;

__attribute__((used)) static unsigned int ebt_broute(void *priv, struct sk_buff *skb,
          const struct nf_hook_state *s)
{
 struct net_bridge_port *p = br_port_get_rcu(skb->dev);
 struct nf_hook_state state;
 unsigned char *dest;
 int ret;

 if (!p || p->state != BR_STATE_FORWARDING)
  return NF_ACCEPT;

 nf_hook_state_init(&state, NF_BR_BROUTING,
      NFPROTO_BRIDGE, s->in, ((void*)0), ((void*)0),
      s->net, ((void*)0));

 ret = ebt_do_table(skb, &state, state.net->xt.broute_table);

 if (ret != NF_DROP)
  return ret;
 BR_INPUT_SKB_CB(skb)->br_netfilter_broute = 1;




 dest = eth_hdr(skb)->h_dest;
 if (skb->pkt_type == PACKET_HOST &&
     !ether_addr_equal(skb->dev->dev_addr, dest) &&
      ether_addr_equal(p->br->dev->dev_addr, dest))
  skb->pkt_type = PACKET_OTHERHOST;

 return NF_ACCEPT;
}
