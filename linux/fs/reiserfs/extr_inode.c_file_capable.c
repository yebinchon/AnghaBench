
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
typedef int sector_t ;
struct TYPE_2__ {int s_blocksize_bits; } ;


 scalar_t__ KEY_FORMAT_3_5 ;
 scalar_t__ get_inode_item_key_version (struct inode*) ;

__attribute__((used)) static int file_capable(struct inode *inode, sector_t block)
{

 if (get_inode_item_key_version(inode) != KEY_FORMAT_3_5 ||

     block < (1 << (31 - inode->i_sb->s_blocksize_bits)))
  return 1;

 return 0;
}
