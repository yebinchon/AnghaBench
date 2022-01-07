
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int do_clone_file_range (struct file*,int ,struct file*,int ,int ,unsigned int) ;
 int file_end_write (struct file*) ;
 int file_start_write (struct file*) ;

loff_t vfs_clone_file_range(struct file *file_in, loff_t pos_in,
       struct file *file_out, loff_t pos_out,
       loff_t len, unsigned int remap_flags)
{
 loff_t ret;

 file_start_write(file_out);
 ret = do_clone_file_range(file_in, pos_in, file_out, pos_out, len,
      remap_flags);
 file_end_write(file_out);

 return ret;
}
