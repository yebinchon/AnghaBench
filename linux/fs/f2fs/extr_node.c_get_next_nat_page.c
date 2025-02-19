
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int dummy; } ;
typedef int pgoff_t ;
typedef int nid_t ;


 scalar_t__ IS_ERR (struct page*) ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 int PAGE_SIZE ;
 int PageDirty (struct page*) ;
 int current_nat_addr (struct f2fs_sb_info*,int ) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int ) ;
 struct page* f2fs_grab_meta_page (struct f2fs_sb_info*,int ) ;
 int f2fs_put_page (struct page*,int) ;
 struct page* get_current_nat_page (struct f2fs_sb_info*,int ) ;
 int memcpy (void*,void*,int ) ;
 int next_nat_addr (struct f2fs_sb_info*,int ) ;
 void* page_address (struct page*) ;
 int set_page_dirty (struct page*) ;
 int set_to_next_nat (struct f2fs_nm_info*,int ) ;

__attribute__((used)) static struct page *get_next_nat_page(struct f2fs_sb_info *sbi, nid_t nid)
{
 struct page *src_page;
 struct page *dst_page;
 pgoff_t dst_off;
 void *src_addr;
 void *dst_addr;
 struct f2fs_nm_info *nm_i = NM_I(sbi);

 dst_off = next_nat_addr(sbi, current_nat_addr(sbi, nid));


 src_page = get_current_nat_page(sbi, nid);
 if (IS_ERR(src_page))
  return src_page;
 dst_page = f2fs_grab_meta_page(sbi, dst_off);
 f2fs_bug_on(sbi, PageDirty(src_page));

 src_addr = page_address(src_page);
 dst_addr = page_address(dst_page);
 memcpy(dst_addr, src_addr, PAGE_SIZE);
 set_page_dirty(dst_page);
 f2fs_put_page(src_page, 1);

 set_to_next_nat(nm_i, nid);

 return dst_page;
}
