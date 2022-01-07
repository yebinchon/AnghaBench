
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_mode; int f_pos_lock; } ;


 unsigned long FDPUT_POS_UNLOCK ;
 int FMODE_ATOMIC_POS ;
 unsigned long __fdget (unsigned int) ;
 int file_count (struct file*) ;
 int mutex_lock (int *) ;

unsigned long __fdget_pos(unsigned int fd)
{
 unsigned long v = __fdget(fd);
 struct file *file = (struct file *)(v & ~3);

 if (file && (file->f_mode & FMODE_ATOMIC_POS)) {
  if (file_count(file) > 1) {
   v |= FDPUT_POS_UNLOCK;
   mutex_lock(&file->f_pos_lock);
  }
 }
 return v;
}
