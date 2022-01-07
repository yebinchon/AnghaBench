
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_dh_state {TYPE_1__* buckets; } ;
struct ip_vs_dest {int dummy; } ;
struct TYPE_2__ {int dest; } ;


 size_t ip_vs_dh_hashkey (int,union nf_inet_addr const*) ;
 struct ip_vs_dest* rcu_dereference (int ) ;

__attribute__((used)) static inline struct ip_vs_dest *
ip_vs_dh_get(int af, struct ip_vs_dh_state *s, const union nf_inet_addr *addr)
{
 return rcu_dereference(s->buckets[ip_vs_dh_hashkey(af, addr)].dest);
}
