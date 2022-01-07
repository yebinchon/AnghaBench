
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ _nfct; } ;
struct TYPE_2__ {int use; } ;
struct nf_conn {TYPE_1__ ct_general; } ;


 int IP_CT_NEW ;
 int IP_CT_UNTRACKED ;
 int XT_CONTINUE ;
 int atomic_inc (int *) ;
 int nf_ct_set (struct sk_buff*,struct nf_conn*,int ) ;

__attribute__((used)) static inline int xt_ct_target(struct sk_buff *skb, struct nf_conn *ct)
{

 if (skb->_nfct != 0)
  return XT_CONTINUE;

 if (ct) {
  atomic_inc(&ct->ct_general.use);
  nf_ct_set(skb, ct, IP_CT_NEW);
 } else {
  nf_ct_set(skb, ct, IP_CT_UNTRACKED);
 }

 return XT_CONTINUE;
}
