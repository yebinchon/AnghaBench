
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef unsigned int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int F2FS_I_SB (struct inode*) ;
 int PageUptodate (struct page*) ;
 int REQ_TIME ;
 int SetPageUptodate (struct page*) ;
 int f2fs_i_size_write (struct inode*,unsigned int) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_update_time (int ,int ) ;
 int f2fs_verity_in_progress (struct inode*) ;
 unsigned int i_size_read (struct inode*) ;
 int set_page_dirty (struct page*) ;
 int trace_f2fs_write_end (struct inode*,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int f2fs_write_end(struct file *file,
   struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 struct inode *inode = page->mapping->host;

 trace_f2fs_write_end(inode, pos, len, copied);






 if (!PageUptodate(page)) {
  if (unlikely(copied != len))
   copied = 0;
  else
   SetPageUptodate(page);
 }
 if (!copied)
  goto unlock_out;

 set_page_dirty(page);

 if (pos + copied > i_size_read(inode) &&
     !f2fs_verity_in_progress(inode))
  f2fs_i_size_write(inode, pos + copied);
unlock_out:
 f2fs_put_page(page, 1);
 f2fs_update_time(F2FS_I_SB(inode), REQ_TIME);
 return copied;
}
