
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {int refcnt; } ;


 int __ip_vs_del_service (struct ip_vs_service*,int) ;
 int atomic_inc (int *) ;
 int ip_vs_svc_unhash (struct ip_vs_service*) ;
 int ip_vs_unregister_conntrack (struct ip_vs_service*) ;

__attribute__((used)) static void ip_vs_unlink_service(struct ip_vs_service *svc, bool cleanup)
{
 ip_vs_unregister_conntrack(svc);

 atomic_inc(&svc->refcnt);



 ip_vs_svc_unhash(svc);

 __ip_vs_del_service(svc, cleanup);
}
