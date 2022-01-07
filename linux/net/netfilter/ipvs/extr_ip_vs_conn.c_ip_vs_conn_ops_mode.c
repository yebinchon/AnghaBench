
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_service {int flags; } ;
struct ip_vs_conn {TYPE_1__* dest; } ;
struct TYPE_2__ {int svc; } ;


 int IP_VS_SVC_F_ONEPACKET ;
 struct ip_vs_service* rcu_dereference (int ) ;

__attribute__((used)) static inline bool ip_vs_conn_ops_mode(struct ip_vs_conn *cp)
{
 struct ip_vs_service *svc;

 if (!cp->dest)
  return 0;
 svc = rcu_dereference(cp->dest->svc);
 return svc && (svc->flags & IP_VS_SVC_F_ONEPACKET);
}
