
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_prio_qopt {int priomap; int bands; } ;
struct sk_buff {int len; } ;
struct Qdisc {int dummy; } ;
typedef int opt ;


 int PFIFO_FAST_BANDS ;
 int TCA_OPTIONS ;
 scalar_t__ TC_PRIO_MAX ;
 int memcpy (int *,int ,scalar_t__) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_prio_qopt*) ;
 int prio2band ;

__attribute__((used)) static int pfifo_fast_dump(struct Qdisc *qdisc, struct sk_buff *skb)
{
 struct tc_prio_qopt opt = { .bands = PFIFO_FAST_BANDS };

 memcpy(&opt.priomap, prio2band, TC_PRIO_MAX + 1);
 if (nla_put(skb, TCA_OPTIONS, sizeof(opt), &opt))
  goto nla_put_failure;
 return skb->len;

nla_put_failure:
 return -1;
}
