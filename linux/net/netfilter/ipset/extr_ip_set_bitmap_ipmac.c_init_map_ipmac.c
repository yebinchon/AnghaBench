
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct ip_set {int family; struct bitmap_ipmac* data; int timeout; } ;
struct bitmap_ipmac {struct ip_set* set; void* elements; void* last_ip; void* first_ip; int members; int memsize; } ;


 int IPSET_NO_TIMEOUT ;
 int NFPROTO_IPV4 ;
 int ip_set_alloc (int ) ;

__attribute__((used)) static bool
init_map_ipmac(struct ip_set *set, struct bitmap_ipmac *map,
        u32 first_ip, u32 last_ip, u32 elements)
{
 map->members = ip_set_alloc(map->memsize);
 if (!map->members)
  return 0;
 map->first_ip = first_ip;
 map->last_ip = last_ip;
 map->elements = elements;
 set->timeout = IPSET_NO_TIMEOUT;

 map->set = set;
 set->data = map;
 set->family = NFPROTO_IPV4;

 return 1;
}
