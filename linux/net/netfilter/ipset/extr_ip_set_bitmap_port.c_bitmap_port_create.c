
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct ip_set {int dsize; int timeout; int * variant; } ;
struct bitmap_port {int elements; int memsize; } ;


 int ENOMEM ;
 size_t IPSET_ATTR_CADT_FLAGS ;
 size_t IPSET_ATTR_PORT ;
 size_t IPSET_ATTR_PORT_TO ;
 size_t IPSET_ATTR_TIMEOUT ;
 int IPSET_ERR_PROTOCOL ;
 int bitmap_bytes (int ,int) ;
 int bitmap_port ;
 int bitmap_port_gc ;
 int bitmap_port_gc_init (struct ip_set*,int ) ;
 int init_map_port (struct ip_set*,struct bitmap_port*,scalar_t__,scalar_t__) ;
 struct bitmap_port* ip_set_alloc (int) ;
 int ip_set_attr_netorder (struct nlattr**,size_t) ;
 int ip_set_elem_len (struct ip_set*,struct nlattr**,int ,int ) ;
 scalar_t__ ip_set_get_h16 (struct nlattr*) ;
 int ip_set_optattr_netorder (struct nlattr**,size_t) ;
 int ip_set_timeout_uget (struct nlattr*) ;
 int kfree (struct bitmap_port*) ;
 int swap (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
bitmap_port_create(struct net *net, struct ip_set *set, struct nlattr *tb[],
     u32 flags)
{
 struct bitmap_port *map;
 u16 first_port, last_port;
 u32 elements;

 if (unlikely(!ip_set_attr_netorder(tb, IPSET_ATTR_PORT) ||
       !ip_set_attr_netorder(tb, IPSET_ATTR_PORT_TO) ||
       !ip_set_optattr_netorder(tb, IPSET_ATTR_TIMEOUT) ||
       !ip_set_optattr_netorder(tb, IPSET_ATTR_CADT_FLAGS)))
  return -IPSET_ERR_PROTOCOL;

 first_port = ip_set_get_h16(tb[IPSET_ATTR_PORT]);
 last_port = ip_set_get_h16(tb[IPSET_ATTR_PORT_TO]);
 if (first_port > last_port)
  swap(first_port, last_port);

 elements = last_port - first_port + 1;
 set->dsize = ip_set_elem_len(set, tb, 0, 0);
 map = ip_set_alloc(sizeof(*map) + elements * set->dsize);
 if (!map)
  return -ENOMEM;

 map->elements = elements;
 map->memsize = bitmap_bytes(0, map->elements);
 set->variant = &bitmap_port;
 if (!init_map_port(set, map, first_port, last_port)) {
  kfree(map);
  return -ENOMEM;
 }
 if (tb[IPSET_ATTR_TIMEOUT]) {
  set->timeout = ip_set_timeout_uget(tb[IPSET_ATTR_TIMEOUT]);
  bitmap_port_gc_init(set, bitmap_port_gc);
 }
 return 0;
}
