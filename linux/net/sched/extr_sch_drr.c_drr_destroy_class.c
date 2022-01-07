
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drr_class {int qdisc; int rate_est; } ;
struct Qdisc {int dummy; } ;


 int gen_kill_estimator (int *) ;
 int kfree (struct drr_class*) ;
 int qdisc_put (int ) ;

__attribute__((used)) static void drr_destroy_class(struct Qdisc *sch, struct drr_class *cl)
{
 gen_kill_estimator(&cl->rate_est);
 qdisc_put(cl->qdisc);
 kfree(cl);
}
