
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xt_action_param {TYPE_4__* target; int targinfo; struct nf_hook_state* state; } ;
struct tcf_result {int dummy; } ;
struct TYPE_10__ {int drops; } ;
struct tcf_ipt {int tcf_lock; TYPE_5__ tcf_qstats; TYPE_3__* tcfi_t; int tcf_bstats; int tcf_tm; int tcfi_hook; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dev; } ;
struct nf_hook_state {int pf; int hook; int in; int net; } ;
struct TYPE_9__ {int (* target ) (struct sk_buff*,struct xt_action_param*) ;} ;
struct TYPE_6__ {TYPE_4__* target; } ;
struct TYPE_7__ {TYPE_1__ kernel; } ;
struct TYPE_8__ {int data; TYPE_2__ u; } ;


 int GFP_ATOMIC ;
 int NFPROTO_IPV4 ;


 int TC_ACT_OK ;
 int TC_ACT_PIPE ;
 int TC_ACT_SHOT ;
 int TC_ACT_UNSPEC ;

 int bstats_update (int *,struct sk_buff*) ;
 int dev_net (int ) ;
 int net_notice_ratelimited (char*,int) ;
 scalar_t__ skb_unclone (struct sk_buff*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct sk_buff*,struct xt_action_param*) ;
 int tcf_lastuse_update (int *) ;
 struct tcf_ipt* to_ipt (struct tc_action const*) ;

__attribute__((used)) static int tcf_ipt_act(struct sk_buff *skb, const struct tc_action *a,
         struct tcf_result *res)
{
 int ret = 0, result = 0;
 struct tcf_ipt *ipt = to_ipt(a);
 struct xt_action_param par;
 struct nf_hook_state state = {
  .net = dev_net(skb->dev),
  .in = skb->dev,
  .hook = ipt->tcfi_hook,
  .pf = NFPROTO_IPV4,
 };

 if (skb_unclone(skb, GFP_ATOMIC))
  return TC_ACT_UNSPEC;

 spin_lock(&ipt->tcf_lock);

 tcf_lastuse_update(&ipt->tcf_tm);
 bstats_update(&ipt->tcf_bstats, skb);





 par.state = &state;
 par.target = ipt->tcfi_t->u.kernel.target;
 par.targinfo = ipt->tcfi_t->data;
 ret = par.target->target(skb, &par);

 switch (ret) {
 case 130:
  result = TC_ACT_OK;
  break;
 case 129:
  result = TC_ACT_SHOT;
  ipt->tcf_qstats.drops++;
  break;
 case 128:
  result = TC_ACT_PIPE;
  break;
 default:
  net_notice_ratelimited("tc filter: Bogus netfilter code %d assume ACCEPT\n",
           ret);
  result = TC_ACT_OK;
  break;
 }
 spin_unlock(&ipt->tcf_lock);
 return result;

}
