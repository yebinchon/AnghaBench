
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qlen; } ;
struct tc_action {scalar_t__ type; TYPE_1__ tcfa_qstats; int cpu_qstats; int tcfa_rate_est; int tcfa_bstats_hw; int cpu_bstats_hw; int tcfa_bstats; int cpu_bstats; int tcfa_lock; } ;
struct sk_buff {int dummy; } ;
struct gnet_dump {int dummy; } ;


 int TCA_ACT_PAD ;
 int TCA_ACT_STATS ;
 scalar_t__ TCA_OLD_COMPAT ;
 int TCA_PAD ;
 int TCA_STATS ;
 int TCA_XSTATS ;
 scalar_t__ gnet_stats_copy_basic (int *,struct gnet_dump*,int ,int *) ;
 scalar_t__ gnet_stats_copy_basic_hw (int *,struct gnet_dump*,int ,int *) ;
 scalar_t__ gnet_stats_copy_queue (struct gnet_dump*,int ,TYPE_1__*,int ) ;
 scalar_t__ gnet_stats_copy_rate_est (struct gnet_dump*,int *) ;
 scalar_t__ gnet_stats_finish_copy (struct gnet_dump*) ;
 int gnet_stats_start_copy (struct sk_buff*,int ,int *,struct gnet_dump*,int ) ;
 int gnet_stats_start_copy_compat (struct sk_buff*,int ,int ,int ,int *,struct gnet_dump*,int ) ;

int tcf_action_copy_stats(struct sk_buff *skb, struct tc_action *p,
     int compat_mode)
{
 int err = 0;
 struct gnet_dump d;

 if (p == ((void*)0))
  goto errout;




 if (compat_mode) {
  if (p->type == TCA_OLD_COMPAT)
   err = gnet_stats_start_copy_compat(skb, 0,
          TCA_STATS,
          TCA_XSTATS,
          &p->tcfa_lock, &d,
          TCA_PAD);
  else
   return 0;
 } else
  err = gnet_stats_start_copy(skb, TCA_ACT_STATS,
         &p->tcfa_lock, &d, TCA_ACT_PAD);

 if (err < 0)
  goto errout;

 if (gnet_stats_copy_basic(((void*)0), &d, p->cpu_bstats, &p->tcfa_bstats) < 0 ||
     gnet_stats_copy_basic_hw(((void*)0), &d, p->cpu_bstats_hw,
         &p->tcfa_bstats_hw) < 0 ||
     gnet_stats_copy_rate_est(&d, &p->tcfa_rate_est) < 0 ||
     gnet_stats_copy_queue(&d, p->cpu_qstats,
      &p->tcfa_qstats,
      p->tcfa_qstats.qlen) < 0)
  goto errout;

 if (gnet_stats_finish_copy(&d) < 0)
  goto errout;

 return 0;

errout:
 return -1;
}
