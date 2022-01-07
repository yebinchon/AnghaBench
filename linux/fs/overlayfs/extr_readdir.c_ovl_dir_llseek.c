
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_dir_file {scalar_t__ cache; TYPE_1__* realfile; scalar_t__ is_real; } ;
struct file {int f_pos; struct ovl_dir_file* private_data; } ;
typedef int loff_t ;
struct TYPE_2__ {int f_pos; } ;


 int EINVAL ;


 int file_inode (struct file*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 int ovl_dir_reset (struct file*) ;
 int ovl_seek_cursor (struct ovl_dir_file*,int ) ;
 int vfs_llseek (TYPE_1__*,int ,int) ;

__attribute__((used)) static loff_t ovl_dir_llseek(struct file *file, loff_t offset, int origin)
{
 loff_t res;
 struct ovl_dir_file *od = file->private_data;

 inode_lock(file_inode(file));
 if (!file->f_pos)
  ovl_dir_reset(file);

 if (od->is_real) {
  res = vfs_llseek(od->realfile, offset, origin);
  file->f_pos = od->realfile->f_pos;
 } else {
  res = -EINVAL;

  switch (origin) {
  case 129:
   offset += file->f_pos;
   break;
  case 128:
   break;
  default:
   goto out_unlock;
  }
  if (offset < 0)
   goto out_unlock;

  if (offset != file->f_pos) {
   file->f_pos = offset;
   if (od->cache)
    ovl_seek_cursor(od, offset);
  }
  res = offset;
 }
out_unlock:
 inode_unlock(file_inode(file));

 return res;
}
