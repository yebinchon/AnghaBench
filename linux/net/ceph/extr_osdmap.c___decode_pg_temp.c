
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int len; int * osds; } ;
struct ceph_pg_mapping {TYPE_1__ pg_temp; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ceph_pg_mapping* ERR_PTR (int ) ;
 int SIZE_MAX ;
 struct ceph_pg_mapping* alloc_pg_mapping (int) ;
 int ceph_decode_32 (void**) ;
 int ceph_decode_32_safe (void**,void*,int,int ) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int e_inval ;

__attribute__((used)) static struct ceph_pg_mapping *__decode_pg_temp(void **p, void *end,
      bool incremental)
{
 struct ceph_pg_mapping *pg;
 u32 len, i;

 ceph_decode_32_safe(p, end, len, e_inval);
 if (len == 0 && incremental)
  return ((void*)0);
 if (len > (SIZE_MAX - sizeof(*pg)) / sizeof(u32))
  return ERR_PTR(-EINVAL);

 ceph_decode_need(p, end, len * sizeof(u32), e_inval);
 pg = alloc_pg_mapping(len * sizeof(u32));
 if (!pg)
  return ERR_PTR(-ENOMEM);

 pg->pg_temp.len = len;
 for (i = 0; i < len; i++)
  pg->pg_temp.osds[i] = ceph_decode_32(p);

 return pg;

e_inval:
 return ERR_PTR(-EINVAL);
}
