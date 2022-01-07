
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;
struct f2fs_sb_info {int dummy; } ;


 scalar_t__ IS_DNODE (struct page*) ;
 scalar_t__ NODE_MAPPING (struct f2fs_sb_info*) ;
 scalar_t__ is_cold_node (struct page*) ;

bool f2fs_in_warm_node_list(struct f2fs_sb_info *sbi, struct page *page)
{
 return NODE_MAPPING(sbi) == page->mapping &&
   IS_DNODE(page) && is_cold_node(page);
}
