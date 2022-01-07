
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct address_space {int host; } ;
typedef int sector_t ;
struct TYPE_2__ {int truncate_lock; } ;


 TYPE_1__* MSDOS_I (int ) ;
 int down_read (int *) ;
 int fat_get_block_bmap ;
 int generic_block_bmap (struct address_space*,int ,int ) ;
 int up_read (int *) ;

__attribute__((used)) static sector_t _fat_bmap(struct address_space *mapping, sector_t block)
{
 sector_t blocknr;


 down_read(&MSDOS_I(mapping->host)->truncate_lock);
 blocknr = generic_block_bmap(mapping, block, fat_get_block_bmap);
 up_read(&MSDOS_I(mapping->host)->truncate_lock);

 return blocknr;
}
