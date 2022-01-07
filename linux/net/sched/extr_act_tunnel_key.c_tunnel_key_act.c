
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_tunnel_key_params {int tcft_action; TYPE_2__* tcft_enc_metadata; } ;
struct TYPE_3__ {int cpu_bstats; } ;
struct tcf_tunnel_key {int tcf_action; TYPE_1__ common; int tcf_tm; int params; } ;
struct tcf_result {int dummy; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int dst; } ;


 int READ_ONCE (int ) ;


 int WARN_ONCE (int,char*,int) ;
 int bstats_cpu_update (int ,struct sk_buff*) ;
 int dst_clone (int *) ;
 struct tcf_tunnel_key_params* rcu_dereference_bh (int ) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int ) ;
 int tcf_lastuse_update (int *) ;
 int this_cpu_ptr (int ) ;
 struct tcf_tunnel_key* to_tunnel_key (struct tc_action const*) ;

__attribute__((used)) static int tunnel_key_act(struct sk_buff *skb, const struct tc_action *a,
     struct tcf_result *res)
{
 struct tcf_tunnel_key *t = to_tunnel_key(a);
 struct tcf_tunnel_key_params *params;
 int action;

 params = rcu_dereference_bh(t->params);

 tcf_lastuse_update(&t->tcf_tm);
 bstats_cpu_update(this_cpu_ptr(t->common.cpu_bstats), skb);
 action = READ_ONCE(t->tcf_action);

 switch (params->tcft_action) {
 case 129:
  skb_dst_drop(skb);
  break;
 case 128:
  skb_dst_drop(skb);
  skb_dst_set(skb, dst_clone(&params->tcft_enc_metadata->dst));
  break;
 default:
  WARN_ONCE(1, "Bad tunnel_key action %d.\n",
     params->tcft_action);
  break;
 }

 return action;
}
