
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clsact_sched_data {int ingress_block_info; int ingress_block; int egress_block_info; int egress_block; } ;
struct Qdisc {int dummy; } ;


 int net_dec_egress_queue () ;
 int net_dec_ingress_queue () ;
 struct clsact_sched_data* qdisc_priv (struct Qdisc*) ;
 int tcf_block_put_ext (int ,struct Qdisc*,int *) ;

__attribute__((used)) static void clsact_destroy(struct Qdisc *sch)
{
 struct clsact_sched_data *q = qdisc_priv(sch);

 tcf_block_put_ext(q->egress_block, sch, &q->egress_block_info);
 tcf_block_put_ext(q->ingress_block, sch, &q->ingress_block_info);

 net_dec_ingress_queue();
 net_dec_egress_queue();
}
