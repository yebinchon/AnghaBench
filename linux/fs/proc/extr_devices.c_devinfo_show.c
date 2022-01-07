
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int CHRDEV_MAJOR_MAX ;
 int blkdev_show (struct seq_file*,int) ;
 int chrdev_show (struct seq_file*,int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int devinfo_show(struct seq_file *f, void *v)
{
 int i = *(loff_t *) v;

 if (i < CHRDEV_MAJOR_MAX) {
  if (i == 0)
   seq_puts(f, "Character devices:\n");
  chrdev_show(f, i);
 }
 return 0;
}
