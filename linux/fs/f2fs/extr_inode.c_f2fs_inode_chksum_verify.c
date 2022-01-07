
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode {int i_inode_checksum; } ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {struct f2fs_inode i; } ;


 TYPE_1__* F2FS_NODE (struct page*) ;
 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int SBI_IS_SHUTDOWN ;
 int f2fs_enable_inode_chksum (struct f2fs_sb_info*,struct page*) ;
 scalar_t__ f2fs_inode_chksum (struct f2fs_sb_info*,struct page*) ;
 int f2fs_warn (struct f2fs_sb_info*,char*,int ,int ,scalar_t__,scalar_t__) ;
 int ino_of_node (struct page*) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ unlikely (int ) ;

bool f2fs_inode_chksum_verify(struct f2fs_sb_info *sbi, struct page *page)
{
 struct f2fs_inode *ri;
 __u32 provided, calculated;

 if (unlikely(is_sbi_flag_set(sbi, SBI_IS_SHUTDOWN)))
  return 1;




 if (!f2fs_enable_inode_chksum(sbi, page) ||
   PageDirty(page) || PageWriteback(page))

  return 1;

 ri = &F2FS_NODE(page)->i;
 provided = le32_to_cpu(ri->i_inode_checksum);
 calculated = f2fs_inode_chksum(sbi, page);

 if (provided != calculated)
  f2fs_warn(sbi, "checksum invalid, nid = %lu, ino_of_node = %x, %x vs. %x",
     page->index, ino_of_node(page), provided, calculated);

 return provided == calculated;
}
