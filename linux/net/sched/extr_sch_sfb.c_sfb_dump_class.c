
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmsg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct Qdisc {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int sfb_dump_class(struct Qdisc *sch, unsigned long cl,
     struct sk_buff *skb, struct tcmsg *tcm)
{
 return -ENOSYS;
}
