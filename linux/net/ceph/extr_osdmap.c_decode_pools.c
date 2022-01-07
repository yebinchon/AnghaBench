
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osdmap {int dummy; } ;


 int __decode_pools (void**,void*,struct ceph_osdmap*,int) ;

__attribute__((used)) static int decode_pools(void **p, void *end, struct ceph_osdmap *map)
{
 return __decode_pools(p, end, map, 0);
}
