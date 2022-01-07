
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;


 int EIO ;
 int filemap_check_errors (struct address_space*) ;
 int filemap_fdatawait (struct address_space*) ;
 int filemap_fdatawrite (struct address_space*) ;
 scalar_t__ mapping_needs_writeback (struct address_space*) ;

int filemap_write_and_wait(struct address_space *mapping)
{
 int err = 0;

 if (mapping_needs_writeback(mapping)) {
  err = filemap_fdatawrite(mapping);






  if (err != -EIO) {
   int err2 = filemap_fdatawait(mapping);
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
