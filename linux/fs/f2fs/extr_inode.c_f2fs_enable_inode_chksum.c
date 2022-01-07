
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode {int i_inline; int i_extra_isize; } ;
struct TYPE_2__ {struct f2fs_inode i; } ;


 int F2FS_EXTRA_ATTR ;
 int F2FS_FITS_IN_INODE (struct f2fs_inode*,int ,int ) ;
 TYPE_1__* F2FS_NODE (struct page*) ;
 int IS_INODE (struct page*) ;
 int f2fs_sb_has_inode_chksum (struct f2fs_sb_info*) ;
 int i_inode_checksum ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static bool f2fs_enable_inode_chksum(struct f2fs_sb_info *sbi, struct page *page)
{
 struct f2fs_inode *ri = &F2FS_NODE(page)->i;

 if (!f2fs_sb_has_inode_chksum(sbi))
  return 0;

 if (!IS_INODE(page) || !(ri->i_inline & F2FS_EXTRA_ATTR))
  return 0;

 if (!F2FS_FITS_IN_INODE(ri, le16_to_cpu(ri->i_extra_isize),
    i_inode_checksum))
  return 0;

 return 1;
}
