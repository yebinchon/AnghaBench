
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osdmap {int pg_upmap; } ;


 int __decode_pg_upmap ;
 int decode_pg_mapping (void**,void*,int *,int ,int) ;

__attribute__((used)) static int decode_pg_upmap(void **p, void *end, struct ceph_osdmap *map)
{
 return decode_pg_mapping(p, end, &map->pg_upmap, __decode_pg_upmap,
     0);
}
