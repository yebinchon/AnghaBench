
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_action_param {struct idletimer_tg_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct idletimer_tg_info {int timeout; TYPE_1__* timer; int label; } ;
struct TYPE_2__ {int timer; } ;


 unsigned int XT_CONTINUE ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int pr_debug (char*,int ,int) ;

__attribute__((used)) static unsigned int idletimer_tg_target(struct sk_buff *skb,
      const struct xt_action_param *par)
{
 const struct idletimer_tg_info *info = par->targinfo;

 pr_debug("resetting timer %s, timeout period %u\n",
   info->label, info->timeout);

 mod_timer(&info->timer->timer,
    msecs_to_jiffies(info->timeout * 1000) + jiffies);

 return XT_CONTINUE;
}
