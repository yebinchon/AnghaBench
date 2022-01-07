
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef unsigned long pgoff_t ;


 int PAGE_SHIFT ;
 struct buffer_head* __nilfs_get_page_block (struct page*,unsigned long,unsigned long,int,unsigned long) ;
 struct page* grab_cache_page (struct address_space*,unsigned long) ;
 int put_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

struct buffer_head *nilfs_grab_buffer(struct inode *inode,
          struct address_space *mapping,
          unsigned long blkoff,
          unsigned long b_state)
{
 int blkbits = inode->i_blkbits;
 pgoff_t index = blkoff >> (PAGE_SHIFT - blkbits);
 struct page *page;
 struct buffer_head *bh;

 page = grab_cache_page(mapping, index);
 if (unlikely(!page))
  return ((void*)0);

 bh = __nilfs_get_page_block(page, blkoff, index, blkbits, b_state);
 if (unlikely(!bh)) {
  unlock_page(page);
  put_page(page);
  return ((void*)0);
 }
 return bh;
}
