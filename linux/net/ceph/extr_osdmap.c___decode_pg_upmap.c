
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pg_mapping {int dummy; } ;


 struct ceph_pg_mapping* __decode_pg_temp (void**,void*,int) ;

__attribute__((used)) static struct ceph_pg_mapping *__decode_pg_upmap(void **p, void *end,
       bool __unused)
{
 return __decode_pg_temp(p, end, 0);
}
