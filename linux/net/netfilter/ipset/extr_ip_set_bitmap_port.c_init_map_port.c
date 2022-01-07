
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct ip_set {int family; struct bitmap_port* data; int timeout; } ;
struct bitmap_port {struct ip_set* set; void* last_port; void* first_port; int members; int memsize; } ;


 int IPSET_NO_TIMEOUT ;
 int NFPROTO_UNSPEC ;
 int ip_set_alloc (int ) ;

__attribute__((used)) static bool
init_map_port(struct ip_set *set, struct bitmap_port *map,
       u16 first_port, u16 last_port)
{
 map->members = ip_set_alloc(map->memsize);
 if (!map->members)
  return 0;
 map->first_port = first_port;
 map->last_port = last_port;
 set->timeout = IPSET_NO_TIMEOUT;

 map->set = set;
 set->data = map;
 set->family = NFPROTO_UNSPEC;

 return 1;
}
