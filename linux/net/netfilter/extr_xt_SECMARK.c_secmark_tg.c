
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xt_secmark_target_info {int secid; } ;
struct xt_action_param {struct xt_secmark_target_info* targinfo; } ;
struct sk_buff {int secmark; } ;


 int BUG () ;

 unsigned int XT_CONTINUE ;
 int mode ;

__attribute__((used)) static unsigned int
secmark_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 u32 secmark = 0;
 const struct xt_secmark_target_info *info = par->targinfo;

 switch (mode) {
 case 128:
  secmark = info->secid;
  break;
 default:
  BUG();
 }

 skb->secmark = secmark;
 return XT_CONTINUE;
}
