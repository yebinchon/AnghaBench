
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int nid_t ;


 struct f2fs_sb_info* F2FS_P_SB (struct page*) ;
 struct page* __get_node_page (struct f2fs_sb_info*,int ,struct page*,int) ;
 int get_nid (struct page*,int,int) ;

struct page *f2fs_get_node_page_ra(struct page *parent, int start)
{
 struct f2fs_sb_info *sbi = F2FS_P_SB(parent);
 nid_t nid = get_nid(parent, start, 0);

 return __get_node_page(sbi, nid, parent, start);
}
