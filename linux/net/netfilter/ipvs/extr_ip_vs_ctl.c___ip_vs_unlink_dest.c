
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_service {scalar_t__ af; int scheduler; TYPE_1__* ipvs; int num_dests; } ;
struct ip_vs_scheduler {int (* del_dest ) (struct ip_vs_service*,struct ip_vs_dest*) ;} ;
struct ip_vs_dest {scalar_t__ af; int n_list; int flags; } ;
struct TYPE_2__ {int mixed_address_family_dests; } ;


 int IP_VS_DEST_F_AVAILABLE ;
 int list_del_rcu (int *) ;
 struct ip_vs_scheduler* rcu_dereference_protected (int ,int) ;
 int stub1 (struct ip_vs_service*,struct ip_vs_dest*) ;

__attribute__((used)) static void __ip_vs_unlink_dest(struct ip_vs_service *svc,
    struct ip_vs_dest *dest,
    int svcupd)
{
 dest->flags &= ~IP_VS_DEST_F_AVAILABLE;




 list_del_rcu(&dest->n_list);
 svc->num_dests--;

 if (dest->af != svc->af)
  svc->ipvs->mixed_address_family_dests--;

 if (svcupd) {
  struct ip_vs_scheduler *sched;

  sched = rcu_dereference_protected(svc->scheduler, 1);
  if (sched && sched->del_dest)
   sched->del_dest(svc, dest);
 }
}
