
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_1__ ntfs_inode ;


 int GFP_NOFS ;
 struct inode* VFS_I (TYPE_1__*) ;
 TYPE_1__* kmem_cache_alloc (int ,int ) ;
 scalar_t__ likely (int ) ;
 int ntfs_big_inode_cache ;
 int ntfs_debug (char*) ;
 int ntfs_error (struct super_block*,char*) ;

struct inode *ntfs_alloc_big_inode(struct super_block *sb)
{
 ntfs_inode *ni;

 ntfs_debug("Entering.");
 ni = kmem_cache_alloc(ntfs_big_inode_cache, GFP_NOFS);
 if (likely(ni != ((void*)0))) {
  ni->state = 0;
  return VFS_I(ni);
 }
 ntfs_error(sb, "Allocation of NTFS big inode structure failed.");
 return ((void*)0);
}
