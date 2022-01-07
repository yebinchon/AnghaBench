
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_connsecmark_target_info {int mode; } ;
struct xt_action_param {struct xt_connsecmark_target_info* targinfo; } ;
struct sk_buff {int dummy; } ;


 int BUG () ;


 unsigned int XT_CONTINUE ;
 int secmark_restore (struct sk_buff*) ;
 int secmark_save (struct sk_buff*) ;

__attribute__((used)) static unsigned int
connsecmark_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_connsecmark_target_info *info = par->targinfo;

 switch (info->mode) {
 case 128:
  secmark_save(skb);
  break;

 case 129:
  secmark_restore(skb);
  break;

 default:
  BUG();
 }

 return XT_CONTINUE;
}
