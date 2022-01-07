
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netem_sched_data {int loss_model; int loss_cor; int loss; } ;





 int get_crandom (int *) ;
 int loss_4state (struct netem_sched_data*) ;
 int loss_gilb_ell (struct netem_sched_data*) ;

__attribute__((used)) static bool loss_event(struct netem_sched_data *q)
{
 switch (q->loss_model) {
 case 128:

  return q->loss && q->loss >= get_crandom(&q->loss_cor);

 case 130:





  return loss_4state(q);

 case 129:





  return loss_gilb_ell(q);
 }

 return 0;
}
