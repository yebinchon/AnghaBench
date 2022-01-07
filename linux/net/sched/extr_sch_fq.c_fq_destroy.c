
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fq_sched_data {int watchdog; int fq_root; } ;
struct Qdisc {int dummy; } ;


 int fq_free (int ) ;
 int fq_reset (struct Qdisc*) ;
 struct fq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_cancel (int *) ;

__attribute__((used)) static void fq_destroy(struct Qdisc *sch)
{
 struct fq_sched_data *q = qdisc_priv(sch);

 fq_reset(sch);
 fq_free(q->fq_root);
 qdisc_watchdog_cancel(&q->watchdog);
}
