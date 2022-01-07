
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {TYPE_1__* next; } ;
struct ip_vs_service {int sched_lock; scalar_t__ sched_data; } ;
struct ip_vs_dest {struct list_head n_list; } ;
struct TYPE_2__ {scalar_t__ prev; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ip_vs_rr_del_dest(struct ip_vs_service *svc, struct ip_vs_dest *dest)
{
 struct list_head *p;

 spin_lock_bh(&svc->sched_lock);
 p = (struct list_head *) svc->sched_data;



 if (p == &dest->n_list)
  svc->sched_data = p->next->prev;
 spin_unlock_bh(&svc->sched_lock);
 return 0;
}
