
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct hash_netnet6_elem {void** cidr; int * ip; } ;


 int ip6_netmask (int *,void*) ;

__attribute__((used)) static inline void
hash_netnet6_data_netmask(struct hash_netnet6_elem *elem, u8 cidr, bool inner)
{
 if (inner) {
  ip6_netmask(&elem->ip[1], cidr);
  elem->cidr[1] = cidr;
 } else {
  ip6_netmask(&elem->ip[0], cidr);
  elem->cidr[0] = cidr;
 }
}
