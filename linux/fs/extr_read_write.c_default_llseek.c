
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
struct file {scalar_t__ f_version; scalar_t__ f_pos; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ENXIO ;




 struct inode* file_inode (struct file*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 scalar_t__ unsigned_offsets (struct file*) ;

loff_t default_llseek(struct file *file, loff_t offset, int whence)
{
 struct inode *inode = file_inode(file);
 loff_t retval;

 inode_lock(inode);
 switch (whence) {
  case 129:
   offset += i_size_read(inode);
   break;
  case 131:
   if (offset == 0) {
    retval = file->f_pos;
    goto out;
   }
   offset += file->f_pos;
   break;
  case 130:





   if (offset >= inode->i_size) {
    retval = -ENXIO;
    goto out;
   }
   break;
  case 128:





   if (offset >= inode->i_size) {
    retval = -ENXIO;
    goto out;
   }
   offset = inode->i_size;
   break;
 }
 retval = -EINVAL;
 if (offset >= 0 || unsigned_offsets(file)) {
  if (offset != file->f_pos) {
   file->f_pos = offset;
   file->f_version = 0;
  }
  retval = offset;
 }
out:
 inode_unlock(inode);
 return retval;
}
