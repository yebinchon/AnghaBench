
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_inode {int dummy; } ;
struct TYPE_5__ {scalar_t__ nrpages; } ;
struct TYPE_4__ {TYPE_2__* i_mapping; } ;


 int EINVAL ;
 TYPE_1__* VFS_I (struct xfs_inode*) ;
 int filemap_write_and_wait (TYPE_2__*) ;
 int truncate_pagecache_range (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
xfs_swap_extent_flush(
 struct xfs_inode *ip)
{
 int error;

 error = filemap_write_and_wait(VFS_I(ip)->i_mapping);
 if (error)
  return error;
 truncate_pagecache_range(VFS_I(ip), 0, -1);


 if (VFS_I(ip)->i_mapping->nrpages)
  return -EINVAL;
 return 0;
}
