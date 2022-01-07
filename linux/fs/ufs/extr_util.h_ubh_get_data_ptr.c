
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ufs_sb_private_info {scalar_t__ fs_magic; } ;
struct ufs_buffer_head {int dummy; } ;


 scalar_t__ UFS2_MAGIC ;
 void* ubh_get_addr32 (struct ufs_buffer_head*,int ) ;
 void* ubh_get_addr64 (struct ufs_buffer_head*,int ) ;

__attribute__((used)) static inline void *ubh_get_data_ptr(struct ufs_sb_private_info *uspi,
         struct ufs_buffer_head *ubh,
         u64 blk)
{
 if (uspi->fs_magic == UFS2_MAGIC)
  return ubh_get_addr64(ubh, blk);
 else
  return ubh_get_addr32(ubh, blk);
}
