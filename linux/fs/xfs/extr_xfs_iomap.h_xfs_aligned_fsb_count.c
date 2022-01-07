
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fileoff_t ;
typedef int xfs_filblks_t ;
typedef scalar_t__ xfs_extlen_t ;


 int div_u64_rem (int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static inline xfs_filblks_t
xfs_aligned_fsb_count(
 xfs_fileoff_t offset_fsb,
 xfs_filblks_t count_fsb,
 xfs_extlen_t extsz)
{
 if (extsz) {
  xfs_extlen_t align;

  div_u64_rem(offset_fsb, extsz, &align);
  if (align)
   count_fsb += align;
  div_u64_rem(count_fsb, extsz, &align);
  if (align)
   count_fsb += extsz - align;
 }

 return count_fsb;
}
