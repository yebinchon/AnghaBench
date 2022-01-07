
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_service {int af; } ;
struct ip_vs_mh_state {TYPE_1__* lookup; int hash1; } ;
struct ip_vs_dest {int port; int addr; int af; } ;
typedef int __be16 ;
struct TYPE_2__ {int dest; } ;


 int IP_VS_DBG_ADDR (int ,int *) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,...) ;
 unsigned int IP_VS_MH_TAB_SIZE ;
 unsigned int ip_vs_mh_hashkey (int ,union nf_inet_addr const*,int ,int *,unsigned int) ;
 int is_unavailable (struct ip_vs_dest*) ;
 int ntohs (int ) ;
 struct ip_vs_dest* rcu_dereference (int ) ;

__attribute__((used)) static inline struct ip_vs_dest *
ip_vs_mh_get_fallback(struct ip_vs_service *svc, struct ip_vs_mh_state *s,
        const union nf_inet_addr *addr, __be16 port)
{
 unsigned int offset, roffset;
 unsigned int hash, ihash;
 struct ip_vs_dest *dest;


 ihash = ip_vs_mh_hashkey(svc->af, addr, port,
     &s->hash1, 0) % IP_VS_MH_TAB_SIZE;
 dest = rcu_dereference(s->lookup[ihash].dest);
 if (!dest)
  return ((void*)0);
 if (!is_unavailable(dest))
  return dest;

 IP_VS_DBG_BUF(6, "MH: selected unavailable server %s:%u, reselecting",
        IP_VS_DBG_ADDR(dest->af, &dest->addr), ntohs(dest->port));




 for (offset = 0; offset < IP_VS_MH_TAB_SIZE; offset++) {
  roffset = (offset + ihash) % IP_VS_MH_TAB_SIZE;
  hash = ip_vs_mh_hashkey(svc->af, addr, port, &s->hash1,
     roffset) % IP_VS_MH_TAB_SIZE;
  dest = rcu_dereference(s->lookup[hash].dest);
  if (!dest)
   break;
  if (!is_unavailable(dest))
   return dest;
  IP_VS_DBG_BUF(6,
         "MH: selected unavailable server %s:%u (offset %u), reselecting",
         IP_VS_DBG_ADDR(dest->af, &dest->addr),
         ntohs(dest->port), roffset);
 }

 return ((void*)0);
}
