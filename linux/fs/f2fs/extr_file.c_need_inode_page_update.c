
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int nid_t ;


 int NODE_MAPPING (struct f2fs_sb_info*) ;
 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ f2fs_need_inode_block_update (struct f2fs_sb_info*,int ) ;
 int f2fs_put_page (struct page*,int ) ;
 struct page* find_get_page (int ,int ) ;

__attribute__((used)) static bool need_inode_page_update(struct f2fs_sb_info *sbi, nid_t ino)
{
 struct page *i = find_get_page(NODE_MAPPING(sbi), ino);
 bool ret = 0;

 if ((i && PageDirty(i)) || f2fs_need_inode_block_update(sbi, ino))
  ret = 1;
 f2fs_put_page(i, 0);
 return ret;
}
