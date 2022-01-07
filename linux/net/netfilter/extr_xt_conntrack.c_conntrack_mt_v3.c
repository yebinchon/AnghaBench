
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_conntrack_mtinfo3 {int status_mask; int state_mask; } ;
struct xt_action_param {struct xt_conntrack_mtinfo3* matchinfo; } ;
struct sk_buff {int dummy; } ;


 int conntrack_mt (struct sk_buff const*,struct xt_action_param*,int ,int ) ;

__attribute__((used)) static bool
conntrack_mt_v3(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_conntrack_mtinfo3 *info = par->matchinfo;

 return conntrack_mt(skb, par, info->state_mask, info->status_mask);
}
