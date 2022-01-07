
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_ct_target_info_v1 {struct nf_conn* ct; } ;
struct xt_action_param {struct xt_ct_target_info_v1* targinfo; } ;
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;


 unsigned int xt_ct_target (struct sk_buff*,struct nf_conn*) ;

__attribute__((used)) static unsigned int xt_ct_target_v1(struct sk_buff *skb,
        const struct xt_action_param *par)
{
 const struct xt_ct_target_info_v1 *info = par->targinfo;
 struct nf_conn *ct = info->ct;

 return xt_ct_target(skb, ct);
}
