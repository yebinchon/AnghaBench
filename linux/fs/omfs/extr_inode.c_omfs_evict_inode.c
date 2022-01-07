
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; scalar_t__ i_size; int i_mode; scalar_t__ i_nlink; int i_data; } ;


 scalar_t__ S_ISREG (int ) ;
 int clear_inode (struct inode*) ;
 int omfs_clear_range (int ,int ,int) ;
 int omfs_shrink_inode (struct inode*) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void omfs_evict_inode(struct inode *inode)
{
 truncate_inode_pages_final(&inode->i_data);
 clear_inode(inode);

 if (inode->i_nlink)
  return;

 if (S_ISREG(inode->i_mode)) {
  inode->i_size = 0;
  omfs_shrink_inode(inode);
 }

 omfs_clear_range(inode->i_sb, inode->i_ino, 2);
}
