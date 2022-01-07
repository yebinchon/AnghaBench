
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int host; } ;
typedef unsigned int loff_t ;
struct TYPE_2__ {int mmu_private; } ;


 TYPE_1__* MSDOS_I (int ) ;
 int cont_write_begin (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page**,void**,int ,int *) ;
 int fat_get_block ;
 int fat_write_failed (struct address_space*,unsigned int) ;

__attribute__((used)) static int fat_write_begin(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata)
{
 int err;

 *pagep = ((void*)0);
 err = cont_write_begin(file, mapping, pos, len, flags,
    pagep, fsdata, fat_get_block,
    &MSDOS_I(mapping->host)->mmu_private);
 if (err < 0)
  fat_write_failed(mapping, pos + len);
 return err;
}
