
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct address_space* f_mapping; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int __filemap_fdatawait_range (struct address_space*,int ,int ) ;
 int file_check_and_advance_wb_err (struct file*) ;

int file_fdatawait_range(struct file *file, loff_t start_byte, loff_t end_byte)
{
 struct address_space *mapping = file->f_mapping;

 __filemap_fdatawait_range(mapping, start_byte, end_byte);
 return file_check_and_advance_wb_err(file);
}
