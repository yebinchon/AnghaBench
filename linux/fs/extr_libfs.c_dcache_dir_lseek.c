
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dentry* dentry; } ;
struct file {int f_pos; struct dentry* private_data; TYPE_1__ f_path; } ;
struct dentry {int d_inode; int d_lock; int d_child; int d_subdirs; } ;
typedef int loff_t ;


 int EINVAL ;
 int dput (struct dentry*) ;
 int inode_lock_shared (int ) ;
 int inode_unlock_shared (int ) ;
 int list_del_init (int *) ;
 int list_move (int *,int *) ;
 struct dentry* scan_positives (struct dentry*,int *,int,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

loff_t dcache_dir_lseek(struct file *file, loff_t offset, int whence)
{
 struct dentry *dentry = file->f_path.dentry;
 switch (whence) {
  case 1:
   offset += file->f_pos;

  case 0:
   if (offset >= 0)
    break;

  default:
   return -EINVAL;
 }
 if (offset != file->f_pos) {
  struct dentry *cursor = file->private_data;
  struct dentry *to = ((void*)0);

  inode_lock_shared(dentry->d_inode);

  if (offset > 2)
   to = scan_positives(cursor, &dentry->d_subdirs,
         offset - 2, ((void*)0));
  spin_lock(&dentry->d_lock);
  if (to)
   list_move(&cursor->d_child, &to->d_child);
  else
   list_del_init(&cursor->d_child);
  spin_unlock(&dentry->d_lock);
  dput(to);

  file->f_pos = offset;

  inode_unlock_shared(dentry->d_inode);
 }
 return offset;
}
