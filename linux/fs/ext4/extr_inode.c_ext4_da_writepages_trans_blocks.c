
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 scalar_t__ MAX_WRITEPAGES_EXTENT_LEN ;
 int ext4_journal_blocks_per_page (struct inode*) ;
 int ext4_meta_trans_blocks (struct inode*,scalar_t__,int) ;

__attribute__((used)) static int ext4_da_writepages_trans_blocks(struct inode *inode)
{
 int bpp = ext4_journal_blocks_per_page(inode);

 return ext4_meta_trans_blocks(inode,
    MAX_WRITEPAGES_EXTENT_LEN + bpp - 1, bpp);
}
