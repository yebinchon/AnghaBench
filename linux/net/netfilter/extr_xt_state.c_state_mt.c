
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_state_info {unsigned int statemask; } ;
struct xt_action_param {struct xt_state_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IP_CT_UNTRACKED ;
 unsigned int XT_STATE_BIT (int) ;
 unsigned int XT_STATE_INVALID ;
 unsigned int XT_STATE_UNTRACKED ;
 struct nf_conn* nf_ct_get (struct sk_buff const*,int*) ;

__attribute__((used)) static bool
state_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_state_info *sinfo = par->matchinfo;
 enum ip_conntrack_info ctinfo;
 unsigned int statebit;
 struct nf_conn *ct = nf_ct_get(skb, &ctinfo);

 if (ct)
  statebit = XT_STATE_BIT(ctinfo);
 else if (ctinfo == IP_CT_UNTRACKED)
  statebit = XT_STATE_UNTRACKED;
 else
  statebit = XT_STATE_INVALID;

 return (sinfo->statemask & statebit);
}
