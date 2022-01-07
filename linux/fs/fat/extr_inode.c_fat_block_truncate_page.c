
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;
typedef int loff_t ;


 int block_truncate_page (int ,int ,int ) ;
 int fat_get_block ;

int fat_block_truncate_page(struct inode *inode, loff_t from)
{
 return block_truncate_page(inode->i_mapping, from, fat_get_block);
}
