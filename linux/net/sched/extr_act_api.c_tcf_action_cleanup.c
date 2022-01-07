
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_action {int tcfa_rate_est; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* cleanup ) (struct tc_action*) ;} ;


 int free_tcf (struct tc_action*) ;
 int gen_kill_estimator (int *) ;
 int stub1 (struct tc_action*) ;

__attribute__((used)) static void tcf_action_cleanup(struct tc_action *p)
{
 if (p->ops->cleanup)
  p->ops->cleanup(p);

 gen_kill_estimator(&p->tcfa_rate_est);
 free_tcf(p);
}
