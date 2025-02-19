
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ frag; } ;
struct sw_flow_key {TYPE_2__ ip; } ;
struct sk_buff {int data; } ;
struct TYPE_3__ {int id; } ;
struct ovs_conntrack_info {scalar_t__ commit; TYPE_1__ zone; } ;
struct net {int dummy; } ;


 scalar_t__ OVS_FRAG_TYPE_NONE ;
 int handle_fragments (struct net*,struct sw_flow_key*,int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int ovs_ct_commit (struct net*,struct sw_flow_key*,struct ovs_conntrack_info const*,struct sk_buff*) ;
 int ovs_ct_lookup (struct net*,struct sw_flow_key*,struct ovs_conntrack_info const*,struct sk_buff*) ;
 int ovs_skb_network_trim (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_postpush_rcsum (struct sk_buff*,int ,int) ;
 int skb_pull_rcsum (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;

int ovs_ct_execute(struct net *net, struct sk_buff *skb,
     struct sw_flow_key *key,
     const struct ovs_conntrack_info *info)
{
 int nh_ofs;
 int err;


 nh_ofs = skb_network_offset(skb);
 skb_pull_rcsum(skb, nh_ofs);

 err = ovs_skb_network_trim(skb);
 if (err)
  return err;

 if (key->ip.frag != OVS_FRAG_TYPE_NONE) {
  err = handle_fragments(net, key, info->zone.id, skb);
  if (err)
   return err;
 }

 if (info->commit)
  err = ovs_ct_commit(net, key, info, skb);
 else
  err = ovs_ct_lookup(net, key, info, skb);

 skb_push(skb, nh_ofs);
 skb_postpush_rcsum(skb, skb->data, nh_ofs);
 if (err)
  kfree_skb(skb);
 return err;
}
