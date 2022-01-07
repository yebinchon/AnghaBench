
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {scalar_t__ i_size; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ IS_DIRSYNC (struct inode*) ;
 int NILFS_TI_SYNC ;
 int WARN_ON (int) ;
 unsigned int block_write_end (int *,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,int *) ;
 int i_size_write (struct inode*,scalar_t__) ;
 unsigned int nilfs_page_count_clean_buffers (struct page*,unsigned int,unsigned int) ;
 int nilfs_set_file_dirty (struct inode*,unsigned int) ;
 int nilfs_set_transaction_flag (int ) ;
 scalar_t__ page_offset (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void nilfs_commit_chunk(struct page *page,
          struct address_space *mapping,
          unsigned int from, unsigned int to)
{
 struct inode *dir = mapping->host;
 loff_t pos = page_offset(page) + from;
 unsigned int len = to - from;
 unsigned int nr_dirty, copied;
 int err;

 nr_dirty = nilfs_page_count_clean_buffers(page, from, to);
 copied = block_write_end(((void*)0), mapping, pos, len, len, page, ((void*)0));
 if (pos + copied > dir->i_size)
  i_size_write(dir, pos + copied);
 if (IS_DIRSYNC(dir))
  nilfs_set_transaction_flag(NILFS_TI_SYNC);
 err = nilfs_set_file_dirty(dir, nr_dirty);
 WARN_ON(err);
 unlock_page(page);
}
