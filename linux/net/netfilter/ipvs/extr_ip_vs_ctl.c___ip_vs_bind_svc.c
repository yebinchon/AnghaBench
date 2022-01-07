
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {int refcnt; } ;
struct ip_vs_dest {int svc; } ;


 int atomic_inc (int *) ;
 int rcu_assign_pointer (int ,struct ip_vs_service*) ;

__attribute__((used)) static inline void
__ip_vs_bind_svc(struct ip_vs_dest *dest, struct ip_vs_service *svc)
{
 atomic_inc(&svc->refcnt);
 rcu_assign_pointer(dest->svc, svc);
}
