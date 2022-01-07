
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;


 int choke_change (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;

__attribute__((used)) static int choke_init(struct Qdisc *sch, struct nlattr *opt,
        struct netlink_ext_ack *extack)
{
 return choke_change(sch, opt, extack);
}
