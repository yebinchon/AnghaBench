
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int EXT4_FREE_BLOCKS_FORGET ;
 int EXT4_FREE_BLOCKS_METADATA ;
 int EXT4_INODE_EA_INODE ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;

__attribute__((used)) static inline int get_default_free_blocks_flags(struct inode *inode)
{
 if (S_ISDIR(inode->i_mode) || S_ISLNK(inode->i_mode) ||
     ext4_test_inode_flag(inode, EXT4_INODE_EA_INODE))
  return EXT4_FREE_BLOCKS_METADATA | EXT4_FREE_BLOCKS_FORGET;
 else if (ext4_should_journal_data(inode))
  return EXT4_FREE_BLOCKS_FORGET;
 return 0;
}
