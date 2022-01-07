
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct sw_flow_key {void* recirc_id; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct deferred_action {struct sw_flow_key pkt_key; } ;
struct datapath {int dummy; } ;


 int GFP_ATOMIC ;
 int __this_cpu_dec (int ) ;
 int __this_cpu_inc (int ) ;
 struct deferred_action* add_deferred_actions (struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ;
 struct sw_flow_key* clone_key (struct sw_flow_key*) ;
 int do_execute_actions (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ;
 int exec_actions_level ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ net_ratelimit () ;
 int ovs_dp_name (struct datapath*) ;
 int ovs_dp_process_packet (struct sk_buff*,struct sw_flow_key*) ;
 int pr_warn (char*,int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;

__attribute__((used)) static int clone_execute(struct datapath *dp, struct sk_buff *skb,
    struct sw_flow_key *key, u32 recirc_id,
    const struct nlattr *actions, int len,
    bool last, bool clone_flow_key)
{
 struct deferred_action *da;
 struct sw_flow_key *clone;

 skb = last ? skb : skb_clone(skb, GFP_ATOMIC);
 if (!skb) {


  return 0;
 }







 clone = clone_flow_key ? clone_key(key) : key;
 if (clone) {
  int err = 0;

  if (actions) {
   if (clone_flow_key)
    __this_cpu_inc(exec_actions_level);

   err = do_execute_actions(dp, skb, clone,
       actions, len);

   if (clone_flow_key)
    __this_cpu_dec(exec_actions_level);
  } else {
   clone->recirc_id = recirc_id;
   ovs_dp_process_packet(skb, clone);
  }
  return err;
 }


 da = add_deferred_actions(skb, key, actions, len);
 if (da) {
  if (!actions) {
   key = &da->pkt_key;
   key->recirc_id = recirc_id;
  }
 } else {



  kfree_skb(skb);

  if (net_ratelimit()) {
   if (actions) {
    pr_warn("%s: deferred action limit reached, drop sample action\n",
     ovs_dp_name(dp));
   } else {
    pr_warn("%s: deferred action limit reached, drop recirc action\n",
     ovs_dp_name(dp));
   }
  }
 }
 return 0;
}
