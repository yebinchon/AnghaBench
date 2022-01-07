
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingress_sched_data {int block_info; int block; } ;
struct Qdisc {int dummy; } ;


 int net_dec_ingress_queue () ;
 struct ingress_sched_data* qdisc_priv (struct Qdisc*) ;
 int tcf_block_put_ext (int ,struct Qdisc*,int *) ;

__attribute__((used)) static void ingress_destroy(struct Qdisc *sch)
{
 struct ingress_sched_data *q = qdisc_priv(sch);

 tcf_block_put_ext(q->block, sch, &q->block_info);
 net_dec_ingress_queue();
}
