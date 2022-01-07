
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
typedef int pgoff_t ;
typedef int block_t ;


 int NEW_ADDR ;
 int NULL_ADDR ;


 int __is_valid_data_blkaddr (int ) ;

__attribute__((used)) static bool __found_offset(struct f2fs_sb_info *sbi, block_t blkaddr,
    pgoff_t dirty, pgoff_t pgofs, int whence)
{
 switch (whence) {
 case 129:
  if ((blkaddr == NEW_ADDR && dirty == pgofs) ||
   __is_valid_data_blkaddr(blkaddr))
   return 1;
  break;
 case 128:
  if (blkaddr == NULL_ADDR)
   return 1;
  break;
 }
 return 0;
}
