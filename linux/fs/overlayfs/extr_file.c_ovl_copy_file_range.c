
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int OVL_COPY ;
 int ovl_copyfile (struct file*,int ,struct file*,int ,size_t,unsigned int,int ) ;

__attribute__((used)) static ssize_t ovl_copy_file_range(struct file *file_in, loff_t pos_in,
       struct file *file_out, loff_t pos_out,
       size_t len, unsigned int flags)
{
 return ovl_copyfile(file_in, pos_in, file_out, pos_out, len, flags,
       OVL_COPY);
}
