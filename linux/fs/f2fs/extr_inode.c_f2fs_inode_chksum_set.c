
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode {int i_inode_checksum; } ;
struct TYPE_2__ {struct f2fs_inode i; } ;


 TYPE_1__* F2FS_NODE (struct page*) ;
 int cpu_to_le32 (int ) ;
 int f2fs_enable_inode_chksum (struct f2fs_sb_info*,struct page*) ;
 int f2fs_inode_chksum (struct f2fs_sb_info*,struct page*) ;

void f2fs_inode_chksum_set(struct f2fs_sb_info *sbi, struct page *page)
{
 struct f2fs_inode *ri = &F2FS_NODE(page)->i;

 if (!f2fs_enable_inode_chksum(sbi, page))
  return;

 ri->i_inode_checksum = cpu_to_le32(f2fs_inode_chksum(sbi, page));
}
