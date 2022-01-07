
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hash_netport4_elem {scalar_t__ cidr; int ip; } ;


 int ip_set_netmask (scalar_t__) ;

__attribute__((used)) static inline void
hash_netport4_data_netmask(struct hash_netport4_elem *elem, u8 cidr)
{
 elem->ip &= ip_set_netmask(cidr);
 elem->cidr = cidr - 1;
}
