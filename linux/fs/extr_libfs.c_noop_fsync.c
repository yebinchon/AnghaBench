
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;



int noop_fsync(struct file *file, loff_t start, loff_t end, int datasync)
{
 return 0;
}
