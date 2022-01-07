
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ mac_header; scalar_t__ network_header; int vlan_proto; int vlan_tci; } ;
struct nlattr {int dummy; } ;
struct nfulnl_instance {int skb; } ;


 int NFULA_L2HDR ;
 int NFULA_VLAN ;
 int NFULA_VLAN_PROTO ;
 int NFULA_VLAN_TCI ;
 int htons (int ) ;
 int nla_nest_end (int ,struct nlattr*) ;
 struct nlattr* nla_nest_start (int ,int ) ;
 scalar_t__ nla_put (int ,int ,int,int ) ;
 scalar_t__ nla_put_be16 (int ,int ,int ) ;
 int skb_mac_header (struct sk_buff const*) ;
 int skb_mac_header_was_set (struct sk_buff const*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff const*) ;

__attribute__((used)) static int nfulnl_put_bridge(struct nfulnl_instance *inst, const struct sk_buff *skb)
{
 if (!skb_mac_header_was_set(skb))
  return 0;

 if (skb_vlan_tag_present(skb)) {
  struct nlattr *nest;

  nest = nla_nest_start(inst->skb, NFULA_VLAN);
  if (!nest)
   goto nla_put_failure;

  if (nla_put_be16(inst->skb, NFULA_VLAN_TCI, htons(skb->vlan_tci)) ||
      nla_put_be16(inst->skb, NFULA_VLAN_PROTO, skb->vlan_proto))
   goto nla_put_failure;

  nla_nest_end(inst->skb, nest);
 }

 if (skb->mac_header < skb->network_header) {
  int len = (int)(skb->network_header - skb->mac_header);

  if (nla_put(inst->skb, NFULA_L2HDR, len, skb_mac_header(skb)))
   goto nla_put_failure;
 }

 return 0;

nla_put_failure:
 return -1;
}
