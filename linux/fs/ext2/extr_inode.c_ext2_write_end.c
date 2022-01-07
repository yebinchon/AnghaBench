
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ loff_t ;


 int ext2_write_failed (struct address_space*,scalar_t__) ;
 int generic_write_end (struct file*,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,void*) ;

__attribute__((used)) static int ext2_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 int ret;

 ret = generic_write_end(file, mapping, pos, len, copied, page, fsdata);
 if (ret < len)
  ext2_write_failed(mapping, pos + len);
 return ret;
}
