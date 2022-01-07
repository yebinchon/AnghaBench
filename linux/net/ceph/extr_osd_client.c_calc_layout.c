
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ceph_file_layout {int dummy; } ;


 int ceph_calc_file_object_mapping (struct ceph_file_layout*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int dout (char*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int calc_layout(struct ceph_file_layout *layout, u64 off, u64 *plen,
   u64 *objnum, u64 *objoff, u64 *objlen)
{
 u64 orig_len = *plen;
 u32 xlen;


 ceph_calc_file_object_mapping(layout, off, orig_len, objnum,
       objoff, &xlen);
 *objlen = xlen;
 if (*objlen < orig_len) {
  *plen = *objlen;
  dout(" skipping last %llu, final file extent %llu~%llu\n",
       orig_len - *plen, off, *plen);
 }

 dout("calc_layout objnum=%llx %llu~%llu\n", *objnum, *objoff, *objlen);
 return 0;
}
