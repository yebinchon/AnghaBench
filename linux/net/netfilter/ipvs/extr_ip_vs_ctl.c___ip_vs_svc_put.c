
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {int rcu_head; int port; int addr; int af; int fwmark; int refcnt; } ;


 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int call_rcu (int *,int ) ;
 int ip_vs_service_free (struct ip_vs_service*) ;
 int ip_vs_service_rcu_free ;
 int ntohs (int ) ;

__attribute__((used)) static void __ip_vs_svc_put(struct ip_vs_service *svc, bool do_delay)
{
 if (atomic_dec_and_test(&svc->refcnt)) {
  IP_VS_DBG_BUF(3, "Removing service %u/%s:%u\n",
         svc->fwmark,
         IP_VS_DBG_ADDR(svc->af, &svc->addr),
         ntohs(svc->port));
  if (do_delay)
   call_rcu(&svc->rcu_head, ip_vs_service_rcu_free);
  else
   ip_vs_service_free(svc);
 }
}
