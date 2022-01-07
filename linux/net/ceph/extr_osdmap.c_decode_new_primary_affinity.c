
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ceph_osdmap {int dummy; } ;


 int EINVAL ;
 int ceph_decode_32_safe (void**,void*,int ,int ) ;
 int e_inval ;
 int pr_info (char*,int ,int ) ;
 int set_primary_affinity (struct ceph_osdmap*,int ,int ) ;

__attribute__((used)) static int decode_new_primary_affinity(void **p, void *end,
           struct ceph_osdmap *map)
{
 u32 n;

 ceph_decode_32_safe(p, end, n, e_inval);
 while (n--) {
  u32 osd, aff;
  int ret;

  ceph_decode_32_safe(p, end, osd, e_inval);
  ceph_decode_32_safe(p, end, aff, e_inval);

  ret = set_primary_affinity(map, osd, aff);
  if (ret)
   return ret;

  pr_info("osd%d primary-affinity 0x%x\n", osd, aff);
 }

 return 0;

e_inval:
 return -EINVAL;
}
