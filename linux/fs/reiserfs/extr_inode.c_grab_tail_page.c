
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_size; TYPE_1__* i_sb; int i_mapping; } ;
struct buffer_head {int b_blocknr; struct buffer_head* b_this_page; } ;
struct TYPE_2__ {unsigned long s_blocksize; } ;


 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __block_write_begin (struct page*,unsigned long,unsigned long,int ) ;
 int buffer_uptodate (struct buffer_head*) ;
 struct page* grab_cache_page (int ,unsigned long) ;
 struct buffer_head* page_buffers (struct page*) ;
 int put_page (struct page*) ;
 int reiserfs_error (TYPE_1__*,char*,char*,int ) ;
 int reiserfs_get_block_create_0 ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int grab_tail_page(struct inode *inode,
     struct page **page_result,
     struct buffer_head **bh_result)
{





 unsigned long index = (inode->i_size - 1) >> PAGE_SHIFT;
 unsigned long pos = 0;
 unsigned long start = 0;
 unsigned long blocksize = inode->i_sb->s_blocksize;
 unsigned long offset = (inode->i_size) & (PAGE_SIZE - 1);
 struct buffer_head *bh;
 struct buffer_head *head;
 struct page *page;
 int error;







 if ((offset & (blocksize - 1)) == 0) {
  return -ENOENT;
 }
 page = grab_cache_page(inode->i_mapping, index);
 error = -ENOMEM;
 if (!page) {
  goto out;
 }

 start = (offset / blocksize) * blocksize;

 error = __block_write_begin(page, start, offset - start,
        reiserfs_get_block_create_0);
 if (error)
  goto unlock;

 head = page_buffers(page);
 bh = head;
 do {
  if (pos >= start) {
   break;
  }
  bh = bh->b_this_page;
  pos += blocksize;
 } while (bh != head);

 if (!buffer_uptodate(bh)) {






  reiserfs_error(inode->i_sb, "clm-6000",
          "error reading block %lu", bh->b_blocknr);
  error = -EIO;
  goto unlock;
 }
 *bh_result = bh;
 *page_result = page;

out:
 return error;

unlock:
 unlock_page(page);
 put_page(page);
 return error;
}
