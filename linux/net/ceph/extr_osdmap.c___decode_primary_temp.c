
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ osd; } ;
struct ceph_pg_mapping {TYPE_1__ primary_temp; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ceph_pg_mapping* ERR_PTR (int ) ;
 struct ceph_pg_mapping* alloc_pg_mapping (int ) ;
 int ceph_decode_32_safe (void**,void*,scalar_t__,int ) ;
 int e_inval ;

__attribute__((used)) static struct ceph_pg_mapping *__decode_primary_temp(void **p, void *end,
           bool incremental)
{
 struct ceph_pg_mapping *pg;
 u32 osd;

 ceph_decode_32_safe(p, end, osd, e_inval);
 if (osd == (u32)-1 && incremental)
  return ((void*)0);

 pg = alloc_pg_mapping(0);
 if (!pg)
  return ERR_PTR(-ENOMEM);

 pg->primary_temp.osd = osd;
 return pg;

e_inval:
 return ERR_PTR(-EINVAL);
}
