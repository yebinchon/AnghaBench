
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osdmap {int pg_upmap_items; } ;


 int decode_pg_mapping (void**,void*,int *,int *,int) ;

__attribute__((used)) static int decode_old_pg_upmap_items(void **p, void *end,
         struct ceph_osdmap *map)
{
 return decode_pg_mapping(p, end, &map->pg_upmap_items, ((void*)0), 1);
}
