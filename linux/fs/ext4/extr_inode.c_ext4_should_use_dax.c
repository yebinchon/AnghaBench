
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int i_sb; } ;


 int DAX ;
 int EXT4_INODE_ENCRYPT ;
 int EXT4_INODE_VERITY ;
 int S_ISREG (int ) ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 int test_opt (int ,int ) ;

__attribute__((used)) static bool ext4_should_use_dax(struct inode *inode)
{
 if (!test_opt(inode->i_sb, DAX))
  return 0;
 if (!S_ISREG(inode->i_mode))
  return 0;
 if (ext4_should_journal_data(inode))
  return 0;
 if (ext4_has_inline_data(inode))
  return 0;
 if (ext4_test_inode_flag(inode, EXT4_INODE_ENCRYPT))
  return 0;
 if (ext4_test_inode_flag(inode, EXT4_INODE_VERITY))
  return 0;
 return 1;
}
