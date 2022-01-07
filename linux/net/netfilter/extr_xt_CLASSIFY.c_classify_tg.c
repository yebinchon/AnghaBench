
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_classify_target_info {int priority; } ;
struct xt_action_param {struct xt_classify_target_info* targinfo; } ;
struct sk_buff {int priority; } ;


 unsigned int XT_CONTINUE ;

__attribute__((used)) static unsigned int
classify_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_classify_target_info *clinfo = par->targinfo;

 skb->priority = clinfo->priority;
 return XT_CONTINUE;
}
