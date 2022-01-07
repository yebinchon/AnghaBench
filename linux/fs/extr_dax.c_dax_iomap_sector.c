
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap {int addr; int offset; } ;
typedef int sector_t ;
typedef int loff_t ;


 int PAGE_MASK ;

__attribute__((used)) static sector_t dax_iomap_sector(struct iomap *iomap, loff_t pos)
{
 return (iomap->addr + (pos & PAGE_MASK) - iomap->offset) >> 9;
}
