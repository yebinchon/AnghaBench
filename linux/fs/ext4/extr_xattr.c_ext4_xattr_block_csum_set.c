
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct buffer_head {int b_blocknr; } ;
struct TYPE_3__ {int h_checksum; } ;


 TYPE_1__* BHDR (struct buffer_head*) ;
 scalar_t__ ext4_has_metadata_csum (int ) ;
 int ext4_xattr_block_csum (struct inode*,int ,TYPE_1__*) ;

__attribute__((used)) static void ext4_xattr_block_csum_set(struct inode *inode,
          struct buffer_head *bh)
{
 if (ext4_has_metadata_csum(inode->i_sb))
  BHDR(bh)->h_checksum = ext4_xattr_block_csum(inode,
      bh->b_blocknr, BHDR(bh));
}
