
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int len; void*** from_to; } ;
struct ceph_pg_mapping {TYPE_1__ pg_upmap_items; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ceph_pg_mapping* ERR_PTR (int ) ;
 int SIZE_MAX ;
 struct ceph_pg_mapping* alloc_pg_mapping (int) ;
 void* ceph_decode_32 (void**) ;
 int ceph_decode_32_safe (void**,void*,int,int ) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int e_inval ;

__attribute__((used)) static struct ceph_pg_mapping *__decode_pg_upmap_items(void **p, void *end,
             bool __unused)
{
 struct ceph_pg_mapping *pg;
 u32 len, i;

 ceph_decode_32_safe(p, end, len, e_inval);
 if (len > (SIZE_MAX - sizeof(*pg)) / (2 * sizeof(u32)))
  return ERR_PTR(-EINVAL);

 ceph_decode_need(p, end, 2 * len * sizeof(u32), e_inval);
 pg = alloc_pg_mapping(2 * len * sizeof(u32));
 if (!pg)
  return ERR_PTR(-ENOMEM);

 pg->pg_upmap_items.len = len;
 for (i = 0; i < len; i++) {
  pg->pg_upmap_items.from_to[i][0] = ceph_decode_32(p);
  pg->pg_upmap_items.from_to[i][1] = ceph_decode_32(p);
 }

 return pg;

e_inval:
 return ERR_PTR(-EINVAL);
}
