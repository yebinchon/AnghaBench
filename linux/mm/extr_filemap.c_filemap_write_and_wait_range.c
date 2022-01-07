
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int loff_t ;


 int EIO ;
 int WB_SYNC_ALL ;
 int __filemap_fdatawrite_range (struct address_space*,int ,int ,int ) ;
 int filemap_check_errors (struct address_space*) ;
 int filemap_fdatawait_range (struct address_space*,int ,int ) ;
 scalar_t__ mapping_needs_writeback (struct address_space*) ;

int filemap_write_and_wait_range(struct address_space *mapping,
     loff_t lstart, loff_t lend)
{
 int err = 0;

 if (mapping_needs_writeback(mapping)) {
  err = __filemap_fdatawrite_range(mapping, lstart, lend,
       WB_SYNC_ALL);

  if (err != -EIO) {
   int err2 = filemap_fdatawait_range(mapping,
      lstart, lend);
   if (!err)
    err = err2;
  } else {

   filemap_check_errors(mapping);
  }
 } else {
  err = filemap_check_errors(mapping);
 }
 return err;
}
