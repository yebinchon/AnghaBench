
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; int i_data; } ;
struct TYPE_7__ {int * base_ntfs_ino; int * extent_ntfs_inos; } ;
struct TYPE_8__ {int nr_extents; int count; int page; TYPE_1__ ext; } ;
typedef TYPE_2__ ntfs_inode ;


 int BUG () ;
 int BUG_ON (int ) ;
 scalar_t__ NInoAttr (TYPE_2__*) ;
 scalar_t__ NInoDirty (TYPE_2__*) ;
 TYPE_2__* NTFS_I (struct inode*) ;
 int VFS_I (int *) ;
 int __ntfs_clear_inode (TYPE_2__*) ;
 int atomic_dec_and_test (int *) ;
 int clear_inode (struct inode*) ;
 int iput (int ) ;
 int is_bad_inode (struct inode*) ;
 int kfree (int *) ;
 int ntfs_clear_extent_inode (int ) ;
 int ntfs_commit_inode (struct inode*) ;
 int ntfs_error (int ,char*,int ) ;
 int truncate_inode_pages_final (int *) ;

void ntfs_evict_big_inode(struct inode *vi)
{
 ntfs_inode *ni = NTFS_I(vi);

 truncate_inode_pages_final(&vi->i_data);
 clear_inode(vi);
 if (ni->nr_extents > 0) {
  int i;

  for (i = 0; i < ni->nr_extents; i++)
   ntfs_clear_extent_inode(ni->ext.extent_ntfs_inos[i]);
  kfree(ni->ext.extent_ntfs_inos);
 }

 __ntfs_clear_inode(ni);

 if (NInoAttr(ni)) {

  if (ni->nr_extents == -1) {
   iput(VFS_I(ni->ext.base_ntfs_ino));
   ni->nr_extents = 0;
   ni->ext.base_ntfs_ino = ((void*)0);
  }
 }
 BUG_ON(ni->page);
 if (!atomic_dec_and_test(&ni->count))
  BUG();
 return;
}
