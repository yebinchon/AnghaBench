
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int loff_t ;


 int __filemap_fdatawait_range (struct address_space*,int ,int ) ;
 int filemap_check_and_keep_errors (struct address_space*) ;

int filemap_fdatawait_range_keep_errors(struct address_space *mapping,
  loff_t start_byte, loff_t end_byte)
{
 __filemap_fdatawait_range(mapping, start_byte, end_byte);
 return filemap_check_and_keep_errors(mapping);
}
