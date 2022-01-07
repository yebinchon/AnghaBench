
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int i_sb; } ;


 scalar_t__ IS_PRIVATE (struct inode*) ;
 scalar_t__ STAT_DATA_V1 ;
 scalar_t__ get_inode_sd_version (struct inode*) ;
 int posix_acl_chmod (struct inode*,int ) ;
 int reiserfs_posixacl (int ) ;

int reiserfs_acl_chmod(struct inode *inode)
{
 if (IS_PRIVATE(inode))
  return 0;
 if (get_inode_sd_version(inode) == STAT_DATA_V1 ||
     !reiserfs_posixacl(inode->i_sb))
  return 0;

 return posix_acl_chmod(inode, inode->i_mode);
}
