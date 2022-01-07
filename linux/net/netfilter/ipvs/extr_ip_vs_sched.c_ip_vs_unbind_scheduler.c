
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {int scheduler; } ;
struct ip_vs_scheduler {int (* done_service ) (struct ip_vs_service*) ;} ;


 struct ip_vs_scheduler* rcu_dereference_protected (int ,int) ;
 int stub1 (struct ip_vs_service*) ;

void ip_vs_unbind_scheduler(struct ip_vs_service *svc,
       struct ip_vs_scheduler *sched)
{
 struct ip_vs_scheduler *cur_sched;

 cur_sched = rcu_dereference_protected(svc->scheduler, 1);

 if (!cur_sched)
  return;

 if (sched->done_service)
  sched->done_service(svc);

}
