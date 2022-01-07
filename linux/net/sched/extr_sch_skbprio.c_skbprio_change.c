
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_skbprio_qopt {int limit; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int limit; } ;


 struct tc_skbprio_qopt* nla_data (struct nlattr*) ;

__attribute__((used)) static int skbprio_change(struct Qdisc *sch, struct nlattr *opt,
   struct netlink_ext_ack *extack)
{
 struct tc_skbprio_qopt *ctl = nla_data(opt);

 sch->limit = ctl->limit;
 return 0;
}
