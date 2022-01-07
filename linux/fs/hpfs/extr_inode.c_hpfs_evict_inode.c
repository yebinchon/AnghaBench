
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; int i_ino; int i_nlink; int i_data; } ;


 int clear_inode (struct inode*) ;
 int hpfs_lock (int ) ;
 int hpfs_remove_fnode (int ,int ) ;
 int hpfs_unlock (int ) ;
 int truncate_inode_pages_final (int *) ;

void hpfs_evict_inode(struct inode *inode)
{
 truncate_inode_pages_final(&inode->i_data);
 clear_inode(inode);
 if (!inode->i_nlink) {
  hpfs_lock(inode->i_sb);
  hpfs_remove_fnode(inode->i_sb, inode->i_ino);
  hpfs_unlock(inode->i_sb);
 }
}
