
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int ESPIPE ;

loff_t no_llseek(struct file *file, loff_t offset, int whence)
{
 return -ESPIPE;
}
