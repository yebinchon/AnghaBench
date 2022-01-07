
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_inode {int lock; int write_files; } ;
struct fuse_file {int write_entry; } ;
struct file {struct fuse_file* private_data; } ;


 struct inode* file_inode (struct file*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fuse_link_write_file(struct file *file)
{
 struct inode *inode = file_inode(file);
 struct fuse_inode *fi = get_fuse_inode(inode);
 struct fuse_file *ff = file->private_data;




 spin_lock(&fi->lock);
 if (list_empty(&ff->write_entry))
  list_add(&ff->write_entry, &fi->write_files);
 spin_unlock(&fi->lock);
}
