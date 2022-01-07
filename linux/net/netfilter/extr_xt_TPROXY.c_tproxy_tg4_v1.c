
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ip; } ;
struct xt_tproxy_target_info_v1 {int mark_value; int mark_mask; int lport; TYPE_1__ laddr; } ;
struct xt_action_param {struct xt_tproxy_target_info_v1* targinfo; } ;
struct sk_buff {int dummy; } ;


 unsigned int tproxy_tg4 (int ,struct sk_buff*,int ,int ,int ,int ) ;
 int xt_net (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
tproxy_tg4_v1(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_tproxy_target_info_v1 *tgi = par->targinfo;

 return tproxy_tg4(xt_net(par), skb, tgi->laddr.ip, tgi->lport,
     tgi->mark_mask, tgi->mark_value);
}
