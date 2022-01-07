
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_1__ ntfs_inode ;


 int GFP_NOFS ;
 TYPE_1__* kmem_cache_alloc (int ,int ) ;
 scalar_t__ likely (int ) ;
 int ntfs_debug (char*) ;
 int ntfs_error (int *,char*) ;
 int ntfs_inode_cache ;

__attribute__((used)) static inline ntfs_inode *ntfs_alloc_extent_inode(void)
{
 ntfs_inode *ni;

 ntfs_debug("Entering.");
 ni = kmem_cache_alloc(ntfs_inode_cache, GFP_NOFS);
 if (likely(ni != ((void*)0))) {
  ni->state = 0;
  return ni;
 }
 ntfs_error(((void*)0), "Allocation of NTFS inode structure failed.");
 return ((void*)0);
}
