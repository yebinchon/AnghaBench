
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct qfq_sched {int nonfull_aggs; } ;
struct qfq_aggregate {void* class_weight; void* lmax; int nonfull_next; int active; } ;


 int INIT_LIST_HEAD (int *) ;
 int hlist_add_head (int *,int *) ;

__attribute__((used)) static void qfq_init_agg(struct qfq_sched *q, struct qfq_aggregate *agg,
    u32 lmax, u32 weight)
{
 INIT_LIST_HEAD(&agg->active);
 hlist_add_head(&agg->nonfull_next, &q->nonfull_aggs);

 agg->lmax = lmax;
 agg->class_weight = weight;
}
