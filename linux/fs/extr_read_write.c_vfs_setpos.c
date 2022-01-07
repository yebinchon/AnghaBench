
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ f_pos; scalar_t__ f_version; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ EINVAL ;
 int unsigned_offsets (struct file*) ;

loff_t vfs_setpos(struct file *file, loff_t offset, loff_t maxsize)
{
 if (offset < 0 && !unsigned_offsets(file))
  return -EINVAL;
 if (offset > maxsize)
  return -EINVAL;

 if (offset != file->f_pos) {
  file->f_pos = offset;
  file->f_version = 0;
 }
 return offset;
}
