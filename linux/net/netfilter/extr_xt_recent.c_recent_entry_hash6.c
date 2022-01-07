
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {scalar_t__ ip6; } ;
typedef int u32 ;


 int ARRAY_SIZE (scalar_t__) ;
 int hash_rnd ;
 int ip_list_hash_size ;
 int jhash2 (int *,int ,int ) ;

__attribute__((used)) static inline unsigned int recent_entry_hash6(const union nf_inet_addr *addr)
{
 return jhash2((u32 *)addr->ip6, ARRAY_SIZE(addr->ip6), hash_rnd) &
        (ip_list_hash_size - 1);
}
