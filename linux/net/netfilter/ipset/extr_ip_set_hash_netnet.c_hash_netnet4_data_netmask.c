
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct hash_netnet4_elem {void** cidr; int * ip; } ;


 int ip_set_netmask (void*) ;

__attribute__((used)) static inline void
hash_netnet4_data_netmask(struct hash_netnet4_elem *elem, u8 cidr, bool inner)
{
 if (inner) {
  elem->ip[1] &= ip_set_netmask(cidr);
  elem->cidr[1] = cidr;
 } else {
  elem->ip[0] &= ip_set_netmask(cidr);
  elem->cidr[0] = cidr;
 }
}
