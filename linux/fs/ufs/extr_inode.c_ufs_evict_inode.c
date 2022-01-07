
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; scalar_t__ i_blocks; scalar_t__ i_size; int i_data; int i_nlink; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int clear_inode (struct inode*) ;
 int inode_needs_sync (struct inode*) ;
 int invalidate_inode_buffers (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 int truncate_inode_pages_final (int *) ;
 int ufs_free_inode (struct inode*) ;
 int ufs_truncate_blocks (struct inode*) ;
 int ufs_update_inode (struct inode*,int ) ;

void ufs_evict_inode(struct inode * inode)
{
 int want_delete = 0;

 if (!inode->i_nlink && !is_bad_inode(inode))
  want_delete = 1;

 truncate_inode_pages_final(&inode->i_data);
 if (want_delete) {
  inode->i_size = 0;
  if (inode->i_blocks &&
      (S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
       S_ISLNK(inode->i_mode)))
   ufs_truncate_blocks(inode);
  ufs_update_inode(inode, inode_needs_sync(inode));
 }

 invalidate_inode_buffers(inode);
 clear_inode(inode);

 if (want_delete)
  ufs_free_inode(inode);
}
