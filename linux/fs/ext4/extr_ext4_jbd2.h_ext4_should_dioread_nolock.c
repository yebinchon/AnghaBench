
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int i_sb; } ;


 int DIOREAD_NOLOCK ;
 int EXT4_INODE_EXTENTS ;
 int S_ISREG (int ) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 int test_opt (int ,int ) ;

__attribute__((used)) static inline int ext4_should_dioread_nolock(struct inode *inode)
{
 if (!test_opt(inode->i_sb, DIOREAD_NOLOCK))
  return 0;
 if (!S_ISREG(inode->i_mode))
  return 0;
 if (!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)))
  return 0;
 if (ext4_should_journal_data(inode))
  return 0;
 return 1;
}
