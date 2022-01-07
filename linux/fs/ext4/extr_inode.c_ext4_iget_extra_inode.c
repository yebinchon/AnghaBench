
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext4_inode_info {int i_extra_isize; } ;
struct ext4_inode {int dummy; } ;
typedef scalar_t__ __le32 ;
struct TYPE_2__ {scalar_t__ i_inline_off; } ;


 int EXT4_GOOD_OLD_INODE_SIZE ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_INODE_SIZE (int ) ;
 int EXT4_STATE_XATTR ;
 int EXT4_XATTR_MAGIC ;
 scalar_t__ cpu_to_le32 (int ) ;
 int ext4_find_inline_data_nolock (struct inode*) ;
 int ext4_set_inode_state (struct inode*,int ) ;

__attribute__((used)) static inline int ext4_iget_extra_inode(struct inode *inode,
      struct ext4_inode *raw_inode,
      struct ext4_inode_info *ei)
{
 __le32 *magic = (void *)raw_inode +
   EXT4_GOOD_OLD_INODE_SIZE + ei->i_extra_isize;

 if (EXT4_GOOD_OLD_INODE_SIZE + ei->i_extra_isize + sizeof(__le32) <=
     EXT4_INODE_SIZE(inode->i_sb) &&
     *magic == cpu_to_le32(EXT4_XATTR_MAGIC)) {
  ext4_set_inode_state(inode, EXT4_STATE_XATTR);
  return ext4_find_inline_data_nolock(inode);
 } else
  EXT4_I(inode)->i_inline_off = 0;
 return 0;
}
