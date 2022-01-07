
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode {int * i_addr; } ;
typedef int block_t ;


 int DATA_GENERIC_ENHANCE ;
 int EFSCORRUPTED ;
 int __is_valid_data_blkaddr (int ) ;
 int f2fs_is_valid_blkaddr (struct f2fs_sb_info*,int ,int ) ;
 int le32_to_cpu (int ) ;
 size_t offset_in_addr (struct f2fs_inode*) ;

__attribute__((used)) static int __written_first_block(struct f2fs_sb_info *sbi,
     struct f2fs_inode *ri)
{
 block_t addr = le32_to_cpu(ri->i_addr[offset_in_addr(ri)]);

 if (!__is_valid_data_blkaddr(addr))
  return 1;
 if (!f2fs_is_valid_blkaddr(sbi, addr, DATA_GENERIC_ENHANCE))
  return -EFSCORRUPTED;
 return 0;
}
