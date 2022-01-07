
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int q; } ;
struct htb_class {int block; int rate_est; TYPE_1__ leaf; int level; } ;
struct Qdisc {int dummy; } ;


 int WARN_ON (int) ;
 int gen_kill_estimator (int *) ;
 int kfree (struct htb_class*) ;
 int qdisc_put (int ) ;
 int tcf_block_put (int ) ;

__attribute__((used)) static void htb_destroy_class(struct Qdisc *sch, struct htb_class *cl)
{
 if (!cl->level) {
  WARN_ON(!cl->leaf.q);
  qdisc_put(cl->leaf.q);
 }
 gen_kill_estimator(&cl->rate_est);
 tcf_block_put(cl->block);
 kfree(cl);
}
