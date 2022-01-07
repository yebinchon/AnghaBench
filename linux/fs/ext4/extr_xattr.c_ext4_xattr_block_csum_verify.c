
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_xattr_header {scalar_t__ h_checksum; } ;
struct buffer_head {int b_blocknr; } ;


 struct ext4_xattr_header* BHDR (struct buffer_head*) ;
 scalar_t__ ext4_has_metadata_csum (int ) ;
 scalar_t__ ext4_xattr_block_csum (struct inode*,int ,struct ext4_xattr_header*) ;
 int lock_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int ext4_xattr_block_csum_verify(struct inode *inode,
     struct buffer_head *bh)
{
 struct ext4_xattr_header *hdr = BHDR(bh);
 int ret = 1;

 if (ext4_has_metadata_csum(inode->i_sb)) {
  lock_buffer(bh);
  ret = (hdr->h_checksum == ext4_xattr_block_csum(inode,
       bh->b_blocknr, hdr));
  unlock_buffer(bh);
 }
 return ret;
}
