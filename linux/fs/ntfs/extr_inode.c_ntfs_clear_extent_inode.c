
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int base_ntfs_ino; } ;
struct TYPE_11__ {int nr_extents; TYPE_2__* vol; TYPE_1__ ext; int mft_no; } ;
typedef TYPE_3__ ntfs_inode ;
struct TYPE_10__ {int sb; } ;


 int BUG_ON (int) ;
 int NInoAttr (TYPE_3__*) ;
 scalar_t__ NInoDirty (TYPE_3__*) ;
 int VFS_I (int ) ;
 int __ntfs_clear_inode (TYPE_3__*) ;
 int is_bad_inode (int ) ;
 int ntfs_debug (char*,int ) ;
 int ntfs_destroy_extent_inode (TYPE_3__*) ;
 int ntfs_error (int ,char*) ;

void ntfs_clear_extent_inode(ntfs_inode *ni)
{
 ntfs_debug("Entering for inode 0x%lx.", ni->mft_no);

 BUG_ON(NInoAttr(ni));
 BUG_ON(ni->nr_extents != -1);
 __ntfs_clear_inode(ni);


 ntfs_destroy_extent_inode(ni);
}
