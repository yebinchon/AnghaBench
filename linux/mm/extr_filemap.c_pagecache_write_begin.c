
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space_operations {int (* write_begin ) (struct file*,struct address_space*,int ,unsigned int,unsigned int,struct page**,void**) ;} ;
struct address_space {struct address_space_operations* a_ops; } ;
typedef int loff_t ;


 int stub1 (struct file*,struct address_space*,int ,unsigned int,unsigned int,struct page**,void**) ;

int pagecache_write_begin(struct file *file, struct address_space *mapping,
    loff_t pos, unsigned len, unsigned flags,
    struct page **pagep, void **fsdata)
{
 const struct address_space_operations *aops = mapping->a_ops;

 return aops->write_begin(file, mapping, pos, len, flags,
       pagep, fsdata);
}
