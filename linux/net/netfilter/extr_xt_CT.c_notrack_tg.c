
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {int dummy; } ;
struct sk_buff {scalar_t__ _nfct; } ;


 int IP_CT_UNTRACKED ;
 unsigned int XT_CONTINUE ;
 int nf_ct_set (struct sk_buff*,int *,int ) ;

__attribute__((used)) static unsigned int
notrack_tg(struct sk_buff *skb, const struct xt_action_param *par)
{

 if (skb->_nfct != 0)
  return XT_CONTINUE;

 nf_ct_set(skb, ((void*)0), IP_CT_UNTRACKED);

 return XT_CONTINUE;
}
