
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int DATA ;
 int ENOENT ;
 int F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 int f2fs_bug_on (int ,int) ;
 struct page* f2fs_get_lock_data_page (struct inode*,int,int) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 struct page* find_lock_page (struct address_space*,int) ;
 int set_page_dirty (struct page*) ;
 int zero_user (struct page*,int,int) ;

__attribute__((used)) static int truncate_partial_data_page(struct inode *inode, u64 from,
        bool cache_only)
{
 loff_t offset = from & (PAGE_SIZE - 1);
 pgoff_t index = from >> PAGE_SHIFT;
 struct address_space *mapping = inode->i_mapping;
 struct page *page;

 if (!offset && !cache_only)
  return 0;

 if (cache_only) {
  page = find_lock_page(mapping, index);
  if (page && PageUptodate(page))
   goto truncate_out;
  f2fs_put_page(page, 1);
  return 0;
 }

 page = f2fs_get_lock_data_page(inode, index, 1);
 if (IS_ERR(page))
  return PTR_ERR(page) == -ENOENT ? 0 : PTR_ERR(page);
truncate_out:
 f2fs_wait_on_page_writeback(page, DATA, 1, 1);
 zero_user(page, offset, PAGE_SIZE - offset);


 f2fs_bug_on(F2FS_I_SB(inode), cache_only && IS_ENCRYPTED(inode));
 if (!cache_only)
  set_page_dirty(page);
 f2fs_put_page(page, 1);
 return 0;
}
