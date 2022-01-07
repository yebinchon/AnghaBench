
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_service {int af; } ;
struct ip_vs_mh_state {TYPE_1__* lookup; int hash1; } ;
struct ip_vs_dest {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {int dest; } ;


 unsigned int IP_VS_MH_TAB_SIZE ;
 unsigned int ip_vs_mh_hashkey (int ,union nf_inet_addr const*,int ,int *,int ) ;
 scalar_t__ is_unavailable (struct ip_vs_dest*) ;
 struct ip_vs_dest* rcu_dereference (int ) ;

__attribute__((used)) static inline struct ip_vs_dest *
ip_vs_mh_get(struct ip_vs_service *svc, struct ip_vs_mh_state *s,
      const union nf_inet_addr *addr, __be16 port)
{
 unsigned int hash = ip_vs_mh_hashkey(svc->af, addr, port, &s->hash1, 0)
          % IP_VS_MH_TAB_SIZE;
 struct ip_vs_dest *dest = rcu_dereference(s->lookup[hash].dest);

 return (!dest || is_unavailable(dest)) ? ((void*)0) : dest;
}
