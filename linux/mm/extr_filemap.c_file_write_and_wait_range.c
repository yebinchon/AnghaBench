
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct address_space* f_mapping; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int EIO ;
 int WB_SYNC_ALL ;
 int __filemap_fdatawait_range (struct address_space*,int ,int ) ;
 int __filemap_fdatawrite_range (struct address_space*,int ,int ,int ) ;
 int file_check_and_advance_wb_err (struct file*) ;
 scalar_t__ mapping_needs_writeback (struct address_space*) ;

int file_write_and_wait_range(struct file *file, loff_t lstart, loff_t lend)
{
 int err = 0, err2;
 struct address_space *mapping = file->f_mapping;

 if (mapping_needs_writeback(mapping)) {
  err = __filemap_fdatawrite_range(mapping, lstart, lend,
       WB_SYNC_ALL);

  if (err != -EIO)
   __filemap_fdatawait_range(mapping, lstart, lend);
 }
 err2 = file_check_and_advance_wb_err(file);
 if (!err)
  err = err2;
 return err;
}
