
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sw_flow_key {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct ovs_action_trunc {scalar_t__ max_len; } ;
struct nshhdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct datapath {int dummy; } ;
struct TYPE_2__ {scalar_t__ cutlen; } ;


 int EINPROGRESS ;
 int GFP_ATOMIC ;
 int NSH_HDR_MAX_LEN ;
 TYPE_1__* OVS_CB (struct sk_buff*) ;
 int clone (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ;
 int consume_skb (struct sk_buff*) ;
 int do_output (struct datapath*,struct sk_buff*,int,struct sw_flow_key*) ;
 int execute_check_pkt_len (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ;
 int execute_hash (struct sk_buff*,struct sw_flow_key*,struct nlattr const*) ;
 int execute_masked_set_action (struct sk_buff*,struct sw_flow_key*,struct ovs_action_trunc*) ;
 int execute_recirc (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ;
 int execute_set_action (struct sk_buff*,struct sw_flow_key*,struct ovs_action_trunc*) ;
 int is_flow_key_valid (struct sw_flow_key*) ;
 int kfree_skb (struct sk_buff*) ;
 struct ovs_action_trunc* nla_data (struct nlattr const*) ;
 int nla_get_be16 (struct nlattr const*) ;
 int nla_get_u32 (struct nlattr const*) ;
 int nla_is_last (struct nlattr const*,int) ;
 struct nlattr* nla_next (struct nlattr const*,int*) ;
 int nla_type (struct nlattr const*) ;
 int nsh_hdr_from_nlattr (struct ovs_action_trunc*,struct nshhdr*,int) ;
 int output_userspace (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,struct nlattr const*,int,scalar_t__) ;
 int ovs_ct_clear (struct sk_buff*,struct sw_flow_key*) ;
 int ovs_ct_execute (int ,struct sk_buff*,struct sw_flow_key*,struct ovs_action_trunc*) ;
 int ovs_dp_get_net (struct datapath*) ;
 int ovs_flow_key_update (struct sk_buff*,struct sw_flow_key*) ;
 int ovs_meter_execute (struct datapath*,struct sk_buff*,struct sw_flow_key*,int) ;
 int pop_eth (struct sk_buff*,struct sw_flow_key*) ;
 int pop_mpls (struct sk_buff*,struct sw_flow_key*,int ) ;
 int pop_nsh (struct sk_buff*,struct sw_flow_key*) ;
 int pop_vlan (struct sk_buff*,struct sw_flow_key*) ;
 int push_eth (struct sk_buff*,struct sw_flow_key*,struct ovs_action_trunc*) ;
 int push_mpls (struct sk_buff*,struct sw_flow_key*,struct ovs_action_trunc*) ;
 int push_nsh (struct sk_buff*,struct sw_flow_key*,struct nshhdr*) ;
 int push_vlan (struct sk_buff*,struct sw_flow_key*,struct ovs_action_trunc*) ;
 int sample (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int do_execute_actions(struct datapath *dp, struct sk_buff *skb,
         struct sw_flow_key *key,
         const struct nlattr *attr, int len)
{
 const struct nlattr *a;
 int rem;

 for (a = attr, rem = len; rem > 0;
      a = nla_next(a, &rem)) {
  int err = 0;

  switch (nla_type(a)) {
  case 143: {
   int port = nla_get_u32(a);
   struct sk_buff *clone;





   if (nla_is_last(a, rem)) {
    do_output(dp, skb, port, key);


    return 0;
   }

   clone = skb_clone(skb, GFP_ATOMIC);
   if (clone)
    do_output(dp, clone, port, key);
   OVS_CB(skb)->cutlen = 0;
   break;
  }

  case 129: {
   struct ovs_action_trunc *trunc = nla_data(a);

   if (skb->len > trunc->max_len)
    OVS_CB(skb)->cutlen = skb->len - trunc->max_len;
   break;
  }

  case 128:
   output_userspace(dp, skb, key, a, attr,
           len, OVS_CB(skb)->cutlen);
   OVS_CB(skb)->cutlen = 0;
   break;

  case 145:
   execute_hash(skb, key, a);
   break;

  case 137:
   err = push_mpls(skb, key, nla_data(a));
   break;

  case 141:
   err = pop_mpls(skb, key, nla_get_be16(a));
   break;

  case 135:
   err = push_vlan(skb, key, nla_data(a));
   break;

  case 139:
   err = pop_vlan(skb, key);
   break;

  case 134: {
   bool last = nla_is_last(a, rem);

   err = execute_recirc(dp, skb, key, a, last);
   if (last) {




    return err;
   }
   break;
  }

  case 132:
   err = execute_set_action(skb, key, nla_data(a));
   break;

  case 131:
  case 130:
   err = execute_masked_set_action(skb, key, nla_data(a));
   break;

  case 133: {
   bool last = nla_is_last(a, rem);

   err = sample(dp, skb, key, a, last);
   if (last)
    return err;

   break;
  }

  case 147:
   if (!is_flow_key_valid(key)) {
    err = ovs_flow_key_update(skb, key);
    if (err)
     return err;
   }

   err = ovs_ct_execute(ovs_dp_get_net(dp), skb, key,
          nla_data(a));


   if (err)
    return err == -EINPROGRESS ? 0 : err;
   break;

  case 146:
   err = ovs_ct_clear(skb, key);
   break;

  case 138:
   err = push_eth(skb, key, nla_data(a));
   break;

  case 142:
   err = pop_eth(skb, key);
   break;

  case 136: {
   u8 buffer[NSH_HDR_MAX_LEN];
   struct nshhdr *nh = (struct nshhdr *)buffer;

   err = nsh_hdr_from_nlattr(nla_data(a), nh,
        NSH_HDR_MAX_LEN);
   if (unlikely(err))
    break;
   err = push_nsh(skb, key, nh);
   break;
  }

  case 140:
   err = pop_nsh(skb, key);
   break;

  case 144:
   if (ovs_meter_execute(dp, skb, key, nla_get_u32(a))) {
    consume_skb(skb);
    return 0;
   }
   break;

  case 148: {
   bool last = nla_is_last(a, rem);

   err = clone(dp, skb, key, a, last);
   if (last)
    return err;

   break;
  }

  case 149: {
   bool last = nla_is_last(a, rem);

   err = execute_check_pkt_len(dp, skb, key, a, last);
   if (last)
    return err;

   break;
  }
  }

  if (unlikely(err)) {
   kfree_skb(skb);
   return err;
  }
 }

 consume_skb(skb);
 return 0;
}
