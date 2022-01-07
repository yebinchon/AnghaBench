
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_pos; } ;
typedef int loff_t ;



loff_t noop_llseek(struct file *file, loff_t offset, int whence)
{
 return file->f_pos;
}
