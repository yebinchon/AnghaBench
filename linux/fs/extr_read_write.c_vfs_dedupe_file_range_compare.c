
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;
struct inode {scalar_t__ i_mapping; } ;
typedef int loff_t ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 int PageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 scalar_t__ memcmp (void*,void*,int) ;
 int min (int,int) ;
 int put_page (struct page*) ;
 struct page* vfs_dedupe_get_page (struct inode*,int) ;
 int vfs_lock_two_pages (struct page*,struct page*) ;
 int vfs_unlock_two_pages (struct page*,struct page*) ;

__attribute__((used)) static int vfs_dedupe_file_range_compare(struct inode *src, loff_t srcoff,
      struct inode *dest, loff_t destoff,
      loff_t len, bool *is_same)
{
 loff_t src_poff;
 loff_t dest_poff;
 void *src_addr;
 void *dest_addr;
 struct page *src_page;
 struct page *dest_page;
 loff_t cmp_len;
 bool same;
 int error;

 error = -EINVAL;
 same = 1;
 while (len) {
  src_poff = srcoff & (PAGE_SIZE - 1);
  dest_poff = destoff & (PAGE_SIZE - 1);
  cmp_len = min(PAGE_SIZE - src_poff,
         PAGE_SIZE - dest_poff);
  cmp_len = min(cmp_len, len);
  if (cmp_len <= 0)
   goto out_error;

  src_page = vfs_dedupe_get_page(src, srcoff);
  if (IS_ERR(src_page)) {
   error = PTR_ERR(src_page);
   goto out_error;
  }
  dest_page = vfs_dedupe_get_page(dest, destoff);
  if (IS_ERR(dest_page)) {
   error = PTR_ERR(dest_page);
   put_page(src_page);
   goto out_error;
  }

  vfs_lock_two_pages(src_page, dest_page);






  if (!PageUptodate(src_page) || !PageUptodate(dest_page) ||
      src_page->mapping != src->i_mapping ||
      dest_page->mapping != dest->i_mapping) {
   same = 0;
   goto unlock;
  }

  src_addr = kmap_atomic(src_page);
  dest_addr = kmap_atomic(dest_page);

  flush_dcache_page(src_page);
  flush_dcache_page(dest_page);

  if (memcmp(src_addr + src_poff, dest_addr + dest_poff, cmp_len))
   same = 0;

  kunmap_atomic(dest_addr);
  kunmap_atomic(src_addr);
unlock:
  vfs_unlock_two_pages(src_page, dest_page);
  put_page(dest_page);
  put_page(src_page);

  if (!same)
   break;

  srcoff += cmp_len;
  destoff += cmp_len;
  len -= cmp_len;
 }

 *is_same = same;
 return 0;

out_error:
 return error;
}
