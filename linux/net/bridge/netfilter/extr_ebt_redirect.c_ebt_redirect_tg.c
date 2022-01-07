
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct xt_action_param {struct ebt_redirect_info* targinfo; } ;
struct sk_buff {int pkt_type; } ;
struct ebt_redirect_info {unsigned int target; } ;
struct TYPE_11__ {TYPE_2__* br; } ;
struct TYPE_10__ {int h_dest; } ;
struct TYPE_9__ {int dev_addr; } ;
struct TYPE_8__ {TYPE_1__* dev; } ;
struct TYPE_7__ {int dev_addr; } ;


 unsigned int EBT_DROP ;
 int ETH_ALEN ;
 scalar_t__ NF_BR_BROUTING ;
 int PACKET_HOST ;
 TYPE_5__* br_port_get_rcu (TYPE_3__*) ;
 TYPE_4__* eth_hdr (struct sk_buff*) ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,int ) ;
 scalar_t__ xt_hooknum (struct xt_action_param const*) ;
 TYPE_3__* xt_in (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
ebt_redirect_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct ebt_redirect_info *info = par->targinfo;

 if (skb_ensure_writable(skb, ETH_ALEN))
  return EBT_DROP;

 if (xt_hooknum(par) != NF_BR_BROUTING)

  ether_addr_copy(eth_hdr(skb)->h_dest,
    br_port_get_rcu(xt_in(par))->br->dev->dev_addr);
 else
  ether_addr_copy(eth_hdr(skb)->h_dest, xt_in(par)->dev_addr);
 skb->pkt_type = PACKET_HOST;
 return info->target;
}
