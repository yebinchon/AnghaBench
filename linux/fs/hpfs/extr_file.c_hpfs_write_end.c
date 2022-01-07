
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int i_dirty; } ;


 int generic_write_end (struct file*,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,void*) ;
 TYPE_1__* hpfs_i (struct inode*) ;
 int hpfs_lock (int ) ;
 int hpfs_unlock (int ) ;
 int hpfs_write_failed (struct address_space*,scalar_t__) ;

__attribute__((used)) static int hpfs_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *pagep, void *fsdata)
{
 struct inode *inode = mapping->host;
 int err;
 err = generic_write_end(file, mapping, pos, len, copied, pagep, fsdata);
 if (err < len)
  hpfs_write_failed(mapping, pos + len);
 if (!(err < 0)) {

  hpfs_lock(inode->i_sb);
  hpfs_i(inode)->i_dirty = 1;
  hpfs_unlock(inode->i_sb);
 }
 return err;
}
