
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fq_sched_data {int old_flows; int throttled_flows; int delayed; } ;
struct fq_flow {int rate_node; } ;


 int fq_flow_add_tail (int *,struct fq_flow*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void fq_flow_unset_throttled(struct fq_sched_data *q, struct fq_flow *f)
{
 rb_erase(&f->rate_node, &q->delayed);
 q->throttled_flows--;
 fq_flow_add_tail(&q->old_flows, f);
}
