
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int * enqueue; } ;



__attribute__((used)) static int noqueue_init(struct Qdisc *qdisc, struct nlattr *opt,
   struct netlink_ext_ack *extack)
{



 qdisc->enqueue = ((void*)0);
 return 0;
}
