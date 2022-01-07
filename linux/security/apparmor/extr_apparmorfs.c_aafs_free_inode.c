
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_link; int i_mode; } ;


 scalar_t__ S_ISLNK (int ) ;
 int free_inode_nonrcu (struct inode*) ;
 int kfree (int ) ;

__attribute__((used)) static void aafs_free_inode(struct inode *inode)
{
 if (S_ISLNK(inode->i_mode))
  kfree(inode->i_link);
 free_inode_nonrcu(inode);
}
