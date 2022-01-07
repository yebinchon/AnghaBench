
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int * i_gc_rwsem; int i_mmap_sem; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int IS_NOQUOTA (struct inode*) ;
 size_t WRITE ;
 int down_write (int *) ;
 int f2fs_truncate_blocks (struct inode*,scalar_t__,int) ;
 int f2fs_verity_in_progress (struct inode*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int truncate_pagecache (struct inode*,scalar_t__) ;
 int up_write (int *) ;

__attribute__((used)) static void f2fs_write_failed(struct address_space *mapping, loff_t to)
{
 struct inode *inode = mapping->host;
 loff_t i_size = i_size_read(inode);


 if (to > i_size && !f2fs_verity_in_progress(inode)) {
  down_write(&F2FS_I(inode)->i_gc_rwsem[WRITE]);
  down_write(&F2FS_I(inode)->i_mmap_sem);

  truncate_pagecache(inode, i_size);
  if (!IS_NOQUOTA(inode))
   f2fs_truncate_blocks(inode, i_size, 1);

  up_write(&F2FS_I(inode)->i_mmap_sem);
  up_write(&F2FS_I(inode)->i_gc_rwsem[WRITE]);
 }
}
