
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; scalar_t__ b_size; } ;
struct TYPE_2__ {scalar_t__ h_magic; scalar_t__ h_blocks; } ;


 int BFIRST (struct buffer_head*) ;
 TYPE_1__* BHDR (struct buffer_head*) ;
 int EFSBADCRC ;
 int EFSCORRUPTED ;
 int EXT4_XATTR_MAGIC ;
 int __ext4_error_inode (struct inode*,char const*,unsigned int,int ,char*,unsigned long long) ;
 scalar_t__ buffer_verified (struct buffer_head*) ;
 scalar_t__ cpu_to_le32 (int) ;
 int ext4_xattr_block_csum_verify (struct inode*,struct buffer_head*) ;
 int ext4_xattr_check_entries (int ,scalar_t__,scalar_t__) ;
 int set_buffer_verified (struct buffer_head*) ;

__attribute__((used)) static inline int
__ext4_xattr_check_block(struct inode *inode, struct buffer_head *bh,
    const char *function, unsigned int line)
{
 int error = -EFSCORRUPTED;

 if (BHDR(bh)->h_magic != cpu_to_le32(EXT4_XATTR_MAGIC) ||
     BHDR(bh)->h_blocks != cpu_to_le32(1))
  goto errout;
 if (buffer_verified(bh))
  return 0;

 error = -EFSBADCRC;
 if (!ext4_xattr_block_csum_verify(inode, bh))
  goto errout;
 error = ext4_xattr_check_entries(BFIRST(bh), bh->b_data + bh->b_size,
      bh->b_data);
errout:
 if (error)
  __ext4_error_inode(inode, function, line, 0,
       "corrupted xattr block %llu",
       (unsigned long long) bh->b_blocknr);
 else
  set_buffer_verified(bh);
 return error;
}
