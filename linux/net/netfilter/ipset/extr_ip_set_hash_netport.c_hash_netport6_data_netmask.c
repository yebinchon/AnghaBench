
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hash_netport6_elem {scalar_t__ cidr; int ip; } ;


 int ip6_netmask (int *,scalar_t__) ;

__attribute__((used)) static inline void
hash_netport6_data_netmask(struct hash_netport6_elem *elem, u8 cidr)
{
 ip6_netmask(&elem->ip, cidr);
 elem->cidr = cidr - 1;
}
