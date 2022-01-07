
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {unsigned long long f_pos; int f_lock; } ;
typedef unsigned long long loff_t ;


 unsigned long long ENXIO ;




 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned long long vfs_setpos (struct file*,unsigned long long,unsigned long long) ;

loff_t
generic_file_llseek_size(struct file *file, loff_t offset, int whence,
  loff_t maxsize, loff_t eof)
{
 switch (whence) {
 case 129:
  offset += eof;
  break;
 case 131:






  if (offset == 0)
   return file->f_pos;





  spin_lock(&file->f_lock);
  offset = vfs_setpos(file, file->f_pos + offset, maxsize);
  spin_unlock(&file->f_lock);
  return offset;
 case 130:




  if ((unsigned long long)offset >= eof)
   return -ENXIO;
  break;
 case 128:




  if ((unsigned long long)offset >= eof)
   return -ENXIO;
  offset = eof;
  break;
 }

 return vfs_setpos(file, offset, maxsize);
}
