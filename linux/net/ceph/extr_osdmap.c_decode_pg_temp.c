
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osdmap {int pg_temp; } ;


 int __decode_pg_temp ;
 int decode_pg_mapping (void**,void*,int *,int ,int) ;

__attribute__((used)) static int decode_pg_temp(void **p, void *end, struct ceph_osdmap *map)
{
 return decode_pg_mapping(p, end, &map->pg_temp, __decode_pg_temp,
     0);
}
