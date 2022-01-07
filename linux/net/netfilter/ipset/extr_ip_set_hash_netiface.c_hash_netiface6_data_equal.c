
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int in6; } ;
struct hash_netiface6_elem {scalar_t__ cidr; scalar_t__ physdev; int iface; TYPE_1__ ip; } ;


 scalar_t__ ipv6_addr_equal (int *,int *) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static inline bool
hash_netiface6_data_equal(const struct hash_netiface6_elem *ip1,
     const struct hash_netiface6_elem *ip2,
     u32 *multi)
{
 return ipv6_addr_equal(&ip1->ip.in6, &ip2->ip.in6) &&
        ip1->cidr == ip2->cidr &&
        (++*multi) &&
        ip1->physdev == ip2->physdev &&
        strcmp(ip1->iface, ip2->iface) == 0;
}
