
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tc_red_qopt {scalar_t__ limit; int Scell_log; int Plog; int Wlog; int qth_max; int qth_min; int flags; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct choke_sched_data {unsigned int tab_mask; size_t head; size_t tail; scalar_t__ limit; int vars; int parms; int flags; struct sk_buff** tab; } ;
struct TYPE_2__ {unsigned int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 scalar_t__ CHOKE_MAX_QUEUE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TCA_CHOKE_MAX ;
 size_t TCA_CHOKE_MAX_P ;
 size_t TCA_CHOKE_PARMS ;
 size_t TCA_CHOKE_STAB ;
 int __GFP_ZERO ;
 int choke_free (struct sk_buff**) ;
 int choke_policy ;
 struct sk_buff** kvmalloc_array (unsigned int,int,int) ;
 struct tc_red_qopt* nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct choke_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int qdisc_tree_reduce_backlog (struct Qdisc*,unsigned int,unsigned int) ;
 int red_check_params (int ,int ,int ) ;
 int red_end_of_idle_period (int *) ;
 int red_set_parms (int *,int ,int ,int ,int ,int ,struct tc_red_qopt*,int ) ;
 int red_set_vars (int *) ;
 int roundup_pow_of_two (scalar_t__) ;
 int rtnl_qdisc_drop (struct sk_buff*,struct Qdisc*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int choke_change(struct Qdisc *sch, struct nlattr *opt,
   struct netlink_ext_ack *extack)
{
 struct choke_sched_data *q = qdisc_priv(sch);
 struct nlattr *tb[TCA_CHOKE_MAX + 1];
 const struct tc_red_qopt *ctl;
 int err;
 struct sk_buff **old = ((void*)0);
 unsigned int mask;
 u32 max_P;

 if (opt == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested_deprecated(tb, TCA_CHOKE_MAX, opt,
       choke_policy, ((void*)0));
 if (err < 0)
  return err;

 if (tb[TCA_CHOKE_PARMS] == ((void*)0) ||
     tb[TCA_CHOKE_STAB] == ((void*)0))
  return -EINVAL;

 max_P = tb[TCA_CHOKE_MAX_P] ? nla_get_u32(tb[TCA_CHOKE_MAX_P]) : 0;

 ctl = nla_data(tb[TCA_CHOKE_PARMS]);

 if (!red_check_params(ctl->qth_min, ctl->qth_max, ctl->Wlog))
  return -EINVAL;

 if (ctl->limit > CHOKE_MAX_QUEUE)
  return -EINVAL;

 mask = roundup_pow_of_two(ctl->limit + 1) - 1;
 if (mask != q->tab_mask) {
  struct sk_buff **ntab;

  ntab = kvmalloc_array((mask + 1), sizeof(struct sk_buff *), GFP_KERNEL | __GFP_ZERO);
  if (!ntab)
   return -ENOMEM;

  sch_tree_lock(sch);
  old = q->tab;
  if (old) {
   unsigned int oqlen = sch->q.qlen, tail = 0;
   unsigned dropped = 0;

   while (q->head != q->tail) {
    struct sk_buff *skb = q->tab[q->head];

    q->head = (q->head + 1) & q->tab_mask;
    if (!skb)
     continue;
    if (tail < mask) {
     ntab[tail++] = skb;
     continue;
    }
    dropped += qdisc_pkt_len(skb);
    qdisc_qstats_backlog_dec(sch, skb);
    --sch->q.qlen;
    rtnl_qdisc_drop(skb, sch);
   }
   qdisc_tree_reduce_backlog(sch, oqlen - sch->q.qlen, dropped);
   q->head = 0;
   q->tail = tail;
  }

  q->tab_mask = mask;
  q->tab = ntab;
 } else
  sch_tree_lock(sch);

 q->flags = ctl->flags;
 q->limit = ctl->limit;

 red_set_parms(&q->parms, ctl->qth_min, ctl->qth_max, ctl->Wlog,
        ctl->Plog, ctl->Scell_log,
        nla_data(tb[TCA_CHOKE_STAB]),
        max_P);
 red_set_vars(&q->vars);

 if (q->head == q->tail)
  red_end_of_idle_period(&q->vars);

 sch_tree_unlock(sch);
 choke_free(old);
 return 0;
}
