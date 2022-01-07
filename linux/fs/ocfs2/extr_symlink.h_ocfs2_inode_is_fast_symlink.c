
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_blocks; int i_mode; } ;


 scalar_t__ S_ISLNK (int ) ;

__attribute__((used)) static inline int ocfs2_inode_is_fast_symlink(struct inode *inode)
{
 return (S_ISLNK(inode->i_mode) &&
  inode->i_blocks == 0);
}
