
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_multiq_qopt {int max_bands; int bands; } ;
struct sk_buff {int len; } ;
struct multiq_sched_data {int max_bands; int bands; } ;
struct Qdisc {int dummy; } ;
typedef int opt ;


 int TCA_OPTIONS ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_multiq_qopt*) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int multiq_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 unsigned char *b = skb_tail_pointer(skb);
 struct tc_multiq_qopt opt;

 opt.bands = q->bands;
 opt.max_bands = q->max_bands;

 if (nla_put(skb, TCA_OPTIONS, sizeof(opt), &opt))
  goto nla_put_failure;

 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
