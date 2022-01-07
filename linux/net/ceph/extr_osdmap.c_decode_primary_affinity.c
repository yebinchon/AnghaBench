
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ceph_osdmap {scalar_t__ max_osd; int * osd_primary_affinity; } ;


 int EINVAL ;
 int ceph_decode_32 (void**) ;
 int ceph_decode_32_safe (void**,void*,scalar_t__,int ) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int e_inval ;
 int kvfree (int *) ;
 int set_primary_affinity (struct ceph_osdmap*,scalar_t__,int ) ;

__attribute__((used)) static int decode_primary_affinity(void **p, void *end,
       struct ceph_osdmap *map)
{
 u32 len, i;

 ceph_decode_32_safe(p, end, len, e_inval);
 if (len == 0) {
  kvfree(map->osd_primary_affinity);
  map->osd_primary_affinity = ((void*)0);
  return 0;
 }
 if (len != map->max_osd)
  goto e_inval;

 ceph_decode_need(p, end, map->max_osd*sizeof(u32), e_inval);

 for (i = 0; i < map->max_osd; i++) {
  int ret;

  ret = set_primary_affinity(map, i, ceph_decode_32(p));
  if (ret)
   return ret;
 }

 return 0;

e_inval:
 return -EINVAL;
}
