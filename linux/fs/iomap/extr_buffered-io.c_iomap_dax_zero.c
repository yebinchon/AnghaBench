
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap {int dax_dev; int bdev; } ;
typedef int loff_t ;


 int PAGE_MASK ;
 int __dax_zero_page_range (int ,int ,int ,unsigned int,unsigned int) ;
 int iomap_sector (struct iomap*,int) ;

__attribute__((used)) static int iomap_dax_zero(loff_t pos, unsigned offset, unsigned bytes,
  struct iomap *iomap)
{
 return __dax_zero_page_range(iomap->bdev, iomap->dax_dev,
   iomap_sector(iomap, pos & PAGE_MASK), offset, bytes);
}
