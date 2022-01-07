
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmsg {int tcm_handle; } ;
struct sk_buff {int dummy; } ;
struct Qdisc {int dummy; } ;


 int TC_H_MIN (unsigned long) ;

__attribute__((used)) static int fq_codel_dump_class(struct Qdisc *sch, unsigned long cl,
     struct sk_buff *skb, struct tcmsg *tcm)
{
 tcm->tcm_handle |= TC_H_MIN(cl);
 return 0;
}
