
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tcf_vlan_params {int tcfv_action; int tcfv_push_vid; int tcfv_push_prio; int tcfv_push_proto; } ;
struct TYPE_2__ {int cpu_qstats; int cpu_bstats; } ;
struct tcf_vlan {TYPE_1__ common; int vlan_p; int tcf_action; int tcf_tm; } ;
struct tcf_result {int dummy; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int mac_len; } ;


 int BUG () ;
 int READ_ONCE (int ) ;



 int TC_ACT_SHOT ;
 int VLAN_PRIO_MASK ;
 int VLAN_PRIO_SHIFT ;
 int VLAN_VID_MASK ;
 int __skb_vlan_pop (struct sk_buff*,int*) ;
 int __vlan_hwaccel_clear_tag (struct sk_buff*) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int bstats_cpu_update (int ,struct sk_buff*) ;
 int qstats_drop_inc (int ) ;
 struct tcf_vlan_params* rcu_dereference_bh (int ) ;
 scalar_t__ skb_at_tc_ingress (struct sk_buff*) ;
 int skb_pull_rcsum (struct sk_buff*,int ) ;
 int skb_push_rcsum (struct sk_buff*,int ) ;
 int skb_vlan_pop (struct sk_buff*) ;
 int skb_vlan_push (struct sk_buff*,int ,int) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 int skb_vlan_tag_present (struct sk_buff*) ;
 int skb_vlan_tagged (struct sk_buff*) ;
 int tcf_lastuse_update (int *) ;
 int this_cpu_ptr (int ) ;
 struct tcf_vlan* to_vlan (struct tc_action const*) ;

__attribute__((used)) static int tcf_vlan_act(struct sk_buff *skb, const struct tc_action *a,
   struct tcf_result *res)
{
 struct tcf_vlan *v = to_vlan(a);
 struct tcf_vlan_params *p;
 int action;
 int err;
 u16 tci;

 tcf_lastuse_update(&v->tcf_tm);
 bstats_cpu_update(this_cpu_ptr(v->common.cpu_bstats), skb);




 if (skb_at_tc_ingress(skb))
  skb_push_rcsum(skb, skb->mac_len);

 action = READ_ONCE(v->tcf_action);

 p = rcu_dereference_bh(v->vlan_p);

 switch (p->tcfv_action) {
 case 129:
  err = skb_vlan_pop(skb);
  if (err)
   goto drop;
  break;
 case 128:
  err = skb_vlan_push(skb, p->tcfv_push_proto, p->tcfv_push_vid |
        (p->tcfv_push_prio << VLAN_PRIO_SHIFT));
  if (err)
   goto drop;
  break;
 case 130:

  if (!skb_vlan_tagged(skb))
   goto out;

  if (skb_vlan_tag_present(skb)) {
   tci = skb_vlan_tag_get(skb);
   __vlan_hwaccel_clear_tag(skb);
  } else {

   err = __skb_vlan_pop(skb, &tci);
   if (err)
    goto drop;
  }

  tci = (tci & ~VLAN_VID_MASK) | p->tcfv_push_vid;

  if (p->tcfv_push_prio) {
   tci &= ~VLAN_PRIO_MASK;
   tci |= p->tcfv_push_prio << VLAN_PRIO_SHIFT;
  }

  __vlan_hwaccel_put_tag(skb, p->tcfv_push_proto, tci);
  break;
 default:
  BUG();
 }

out:
 if (skb_at_tc_ingress(skb))
  skb_pull_rcsum(skb, skb->mac_len);

 return action;

drop:
 qstats_drop_inc(this_cpu_ptr(v->common.cpu_qstats));
 return TC_ACT_SHOT;
}
