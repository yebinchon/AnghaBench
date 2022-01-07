
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_htb_glob {scalar_t__ version; int rate2quantum; int defcls; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct htb_sched {int rate2quantum; int defcls; int direct_qlen; int direct_queue; int clhash; int filter_list; int block; int work; int watchdog; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int tx_queue_len; } ;


 int EINVAL ;
 scalar_t__ HTB_VER ;
 int INIT_WORK (int *,int ) ;
 size_t TCA_HTB_DIRECT_QLEN ;
 size_t TCA_HTB_INIT ;
 int TCA_HTB_MAX ;
 int htb_policy ;
 int htb_work_func ;
 struct tc_htb_glob* nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int qdisc_class_hash_init (int *) ;
 TYPE_1__* qdisc_dev (struct Qdisc*) ;
 struct htb_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_skb_head_init (int *) ;
 int qdisc_watchdog_init (int *,struct Qdisc*) ;
 int tcf_block_get (int *,int *,struct Qdisc*,struct netlink_ext_ack*) ;

__attribute__((used)) static int htb_init(struct Qdisc *sch, struct nlattr *opt,
      struct netlink_ext_ack *extack)
{
 struct htb_sched *q = qdisc_priv(sch);
 struct nlattr *tb[TCA_HTB_MAX + 1];
 struct tc_htb_glob *gopt;
 int err;

 qdisc_watchdog_init(&q->watchdog, sch);
 INIT_WORK(&q->work, htb_work_func);

 if (!opt)
  return -EINVAL;

 err = tcf_block_get(&q->block, &q->filter_list, sch, extack);
 if (err)
  return err;

 err = nla_parse_nested_deprecated(tb, TCA_HTB_MAX, opt, htb_policy,
       ((void*)0));
 if (err < 0)
  return err;

 if (!tb[TCA_HTB_INIT])
  return -EINVAL;

 gopt = nla_data(tb[TCA_HTB_INIT]);
 if (gopt->version != HTB_VER >> 16)
  return -EINVAL;

 err = qdisc_class_hash_init(&q->clhash);
 if (err < 0)
  return err;

 qdisc_skb_head_init(&q->direct_queue);

 if (tb[TCA_HTB_DIRECT_QLEN])
  q->direct_qlen = nla_get_u32(tb[TCA_HTB_DIRECT_QLEN]);
 else
  q->direct_qlen = qdisc_dev(sch)->tx_queue_len;

 if ((q->rate2quantum = gopt->rate2quantum) < 1)
  q->rate2quantum = 1;
 q->defcls = gopt->defcls;

 return 0;
}
