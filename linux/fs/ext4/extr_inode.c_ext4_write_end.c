
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {scalar_t__ i_size; scalar_t__ i_nlink; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ loff_t ;
typedef int handle_t ;


 unsigned int block_write_end (struct file*,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,void*) ;
 scalar_t__ ext4_can_truncate (struct inode*) ;
 int ext4_has_inline_data (struct inode*) ;
 int * ext4_journal_current_handle () ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 int ext4_truncate_failed_write (struct inode*) ;
 int ext4_update_inode_size (struct inode*,scalar_t__) ;
 int ext4_verity_in_progress (struct inode*) ;
 int ext4_write_inline_data_end (struct inode*,scalar_t__,unsigned int,unsigned int,struct page*) ;
 int pagecache_isize_extended (struct inode*,scalar_t__,scalar_t__) ;
 int put_page (struct page*) ;
 int trace_ext4_write_end (struct inode*,scalar_t__,unsigned int,unsigned int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ext4_write_end(struct file *file,
     struct address_space *mapping,
     loff_t pos, unsigned len, unsigned copied,
     struct page *page, void *fsdata)
{
 handle_t *handle = ext4_journal_current_handle();
 struct inode *inode = mapping->host;
 loff_t old_size = inode->i_size;
 int ret = 0, ret2;
 int i_size_changed = 0;
 int inline_data = ext4_has_inline_data(inode);
 bool verity = ext4_verity_in_progress(inode);

 trace_ext4_write_end(inode, pos, len, copied);
 if (inline_data) {
  ret = ext4_write_inline_data_end(inode, pos, len,
       copied, page);
  if (ret < 0) {
   unlock_page(page);
   put_page(page);
   goto errout;
  }
  copied = ret;
 } else
  copied = block_write_end(file, mapping, pos,
      len, copied, page, fsdata);







 if (!verity)
  i_size_changed = ext4_update_inode_size(inode, pos + copied);
 unlock_page(page);
 put_page(page);

 if (old_size < pos && !verity)
  pagecache_isize_extended(inode, old_size, pos);






 if (i_size_changed || inline_data)
  ext4_mark_inode_dirty(handle, inode);

 if (pos + len > inode->i_size && !verity && ext4_can_truncate(inode))




  ext4_orphan_add(handle, inode);
errout:
 ret2 = ext4_journal_stop(handle);
 if (!ret)
  ret = ret2;

 if (pos + len > inode->i_size && !verity) {
  ext4_truncate_failed_write(inode);





  if (inode->i_nlink)
   ext4_orphan_del(((void*)0), inode);
 }

 return ret ? ret : copied;
}
