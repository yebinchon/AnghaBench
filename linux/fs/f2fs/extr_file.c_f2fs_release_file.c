
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; int i_writecount; } ;
struct file {int f_mode; } ;


 int FI_DROP_CACHE ;
 int FI_VOLATILE_FILE ;
 int FMODE_WRITE ;
 int atomic_read (int *) ;
 int clear_inode_flag (struct inode*,int ) ;
 int f2fs_drop_inmem_pages (struct inode*) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 scalar_t__ f2fs_is_volatile_file (struct inode*) ;
 int filemap_fdatawrite (int ) ;
 int set_inode_flag (struct inode*,int ) ;
 int stat_dec_volatile_write (struct inode*) ;

__attribute__((used)) static int f2fs_release_file(struct inode *inode, struct file *filp)
{




 if (!(filp->f_mode & FMODE_WRITE) ||
   atomic_read(&inode->i_writecount) != 1)
  return 0;


 if (f2fs_is_atomic_file(inode))
  f2fs_drop_inmem_pages(inode);
 if (f2fs_is_volatile_file(inode)) {
  set_inode_flag(inode, FI_DROP_CACHE);
  filemap_fdatawrite(inode->i_mapping);
  clear_inode_flag(inode, FI_DROP_CACHE);
  clear_inode_flag(inode, FI_VOLATILE_FILE);
  stat_dec_volatile_write(inode);
 }
 return 0;
}
