
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long index; } ;
struct inode {int i_mapping; } ;
struct buffer_head {int b_size; struct page* b_page; } ;
typedef int loff_t ;


 int EIO ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __reiserfs_write_begin (struct page*,unsigned long,unsigned long) ;
 int fix_tail_page_for_writing (struct page*) ;
 int flush_dcache_page (struct page*) ;
 struct page* grab_cache_page (int ,unsigned long) ;
 int put_page (struct page*) ;
 int reiserfs_commit_write (int *,struct page*,unsigned long,unsigned long) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int convert_tail_for_hole(struct inode *inode,
     struct buffer_head *bh_result,
     loff_t tail_offset)
{
 unsigned long index;
 unsigned long tail_end;
 unsigned long tail_start;
 struct page *tail_page;
 struct page *hole_page = bh_result->b_page;
 int retval = 0;

 if ((tail_offset & (bh_result->b_size - 1)) != 1)
  return -EIO;


 tail_start = tail_offset & (PAGE_SIZE - 1);
 tail_end = (tail_start | (bh_result->b_size - 1)) + 1;

 index = tail_offset >> PAGE_SHIFT;




 if (!hole_page || index != hole_page->index) {
  tail_page = grab_cache_page(inode->i_mapping, index);
  retval = -ENOMEM;
  if (!tail_page) {
   goto out;
  }
 } else {
  tail_page = hole_page;
 }
 fix_tail_page_for_writing(tail_page);
 retval = __reiserfs_write_begin(tail_page, tail_start,
          tail_end - tail_start);
 if (retval)
  goto unlock;


 flush_dcache_page(tail_page);

 retval = reiserfs_commit_write(((void*)0), tail_page, tail_start, tail_end);

unlock:
 if (tail_page != hole_page) {
  unlock_page(tail_page);
  put_page(tail_page);
 }
out:
 return retval;
}
