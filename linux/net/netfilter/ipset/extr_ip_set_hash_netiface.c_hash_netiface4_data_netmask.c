
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hash_netiface4_elem {int cidr; int ip; } ;


 int ip_set_netmask (int ) ;

__attribute__((used)) static inline void
hash_netiface4_data_netmask(struct hash_netiface4_elem *elem, u8 cidr)
{
 elem->ip &= ip_set_netmask(cidr);
 elem->cidr = cidr;
}
