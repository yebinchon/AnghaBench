
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ IS_SYNC (struct inode*) ;
 int S_CTIME ;
 int S_MTIME ;
 int fat_truncate_time (struct inode*,int *,int) ;
 int filemap_fdatawait_range (struct address_space*,scalar_t__,scalar_t__) ;
 int filemap_fdatawrite_range (struct address_space*,scalar_t__,scalar_t__) ;
 int generic_cont_expand_simple (struct inode*,scalar_t__) ;
 int mark_inode_dirty (struct inode*) ;
 int sync_mapping_buffers (struct address_space*) ;
 int write_inode_now (struct inode*,int) ;

__attribute__((used)) static int fat_cont_expand(struct inode *inode, loff_t size)
{
 struct address_space *mapping = inode->i_mapping;
 loff_t start = inode->i_size, count = size - inode->i_size;
 int err;

 err = generic_cont_expand_simple(inode, size);
 if (err)
  goto out;

 fat_truncate_time(inode, ((void*)0), S_CTIME|S_MTIME);
 mark_inode_dirty(inode);
 if (IS_SYNC(inode)) {
  int err2;





  err = filemap_fdatawrite_range(mapping, start,
            start + count - 1);
  err2 = sync_mapping_buffers(mapping);
  if (!err)
   err = err2;
  err2 = write_inode_now(inode, 1);
  if (!err)
   err = err2;
  if (!err) {
   err = filemap_fdatawait_range(mapping, start,
             start + count - 1);
  }
 }
out:
 return err;
}
