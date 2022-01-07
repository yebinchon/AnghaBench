
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hash_netiface4_elem {scalar_t__ ip; scalar_t__ cidr; scalar_t__ physdev; int iface; } ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static inline bool
hash_netiface4_data_equal(const struct hash_netiface4_elem *ip1,
     const struct hash_netiface4_elem *ip2,
     u32 *multi)
{
 return ip1->ip == ip2->ip &&
        ip1->cidr == ip2->cidr &&
        (++*multi) &&
        ip1->physdev == ip2->physdev &&
        strcmp(ip1->iface, ip2->iface) == 0;
}
