
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int perturb_period; int flows; int divisor; int limit; int quantum; } ;
struct tc_sfq_qopt_v1 {int qth_min; int qth_max; int Wlog; int flags; int stats; int max_P; int Scell_log; int Plog; int headdrop; int depth; TYPE_1__ v0; } ;
struct sk_buff {int len; } ;
struct sfq_sched_data {int perturb_period; int flags; int stats; int headdrop; int maxdepth; int maxflows; int divisor; int limit; int quantum; struct red_parms* red_parms; } ;
struct red_parms {int qth_min; int Wlog; int qth_max; int max_P; int Scell_log; int Plog; } ;
struct Qdisc {int dummy; } ;
typedef int opt ;


 int HZ ;
 int TCA_OPTIONS ;
 int memcpy (int *,int *,int) ;
 int memset (struct tc_sfq_qopt_v1*,int ,int) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_sfq_qopt_v1*) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int sfq_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct sfq_sched_data *q = qdisc_priv(sch);
 unsigned char *b = skb_tail_pointer(skb);
 struct tc_sfq_qopt_v1 opt;
 struct red_parms *p = q->red_parms;

 memset(&opt, 0, sizeof(opt));
 opt.v0.quantum = q->quantum;
 opt.v0.perturb_period = q->perturb_period / HZ;
 opt.v0.limit = q->limit;
 opt.v0.divisor = q->divisor;
 opt.v0.flows = q->maxflows;
 opt.depth = q->maxdepth;
 opt.headdrop = q->headdrop;

 if (p) {
  opt.qth_min = p->qth_min >> p->Wlog;
  opt.qth_max = p->qth_max >> p->Wlog;
  opt.Wlog = p->Wlog;
  opt.Plog = p->Plog;
  opt.Scell_log = p->Scell_log;
  opt.max_P = p->max_P;
 }
 memcpy(&opt.stats, &q->stats, sizeof(opt.stats));
 opt.flags = q->flags;

 if (nla_put(skb, TCA_OPTIONS, sizeof(opt), &opt))
  goto nla_put_failure;

 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
