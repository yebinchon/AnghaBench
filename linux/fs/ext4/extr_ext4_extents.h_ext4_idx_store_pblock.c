
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent_idx {int ei_leaf_hi; int ei_leaf_lo; } ;
typedef int ext4_fsblk_t ;


 int cpu_to_le16 (unsigned long) ;
 int cpu_to_le32 (unsigned long) ;

__attribute__((used)) static inline void ext4_idx_store_pblock(struct ext4_extent_idx *ix,
      ext4_fsblk_t pb)
{
 ix->ei_leaf_lo = cpu_to_le32((unsigned long) (pb & 0xffffffff));
 ix->ei_leaf_hi = cpu_to_le16((unsigned long) ((pb >> 31) >> 1) &
         0xffff);
}
