
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;
typedef int loff_t ;


 int filemap_write_and_wait_range (int ,int ,int ) ;
 int fuse_sync_writes (struct inode*) ;

__attribute__((used)) static int fuse_writeback_range(struct inode *inode, loff_t start, loff_t end)
{
 int err = filemap_write_and_wait_range(inode->i_mapping, start, end);

 if (!err)
  fuse_sync_writes(inode);

 return err;
}
