
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef unsigned int loff_t ;


 int jfs_get_block ;
 int jfs_write_failed (struct address_space*,unsigned int) ;
 int nobh_write_begin (struct address_space*,unsigned int,unsigned int,unsigned int,struct page**,void**,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int jfs_write_begin(struct file *file, struct address_space *mapping,
    loff_t pos, unsigned len, unsigned flags,
    struct page **pagep, void **fsdata)
{
 int ret;

 ret = nobh_write_begin(mapping, pos, len, flags, pagep, fsdata,
    jfs_get_block);
 if (unlikely(ret))
  jfs_write_failed(mapping, pos + len);

 return ret;
}
