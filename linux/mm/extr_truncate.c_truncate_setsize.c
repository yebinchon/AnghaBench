
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
typedef scalar_t__ loff_t ;


 int i_size_write (struct inode*,scalar_t__) ;
 int pagecache_isize_extended (struct inode*,scalar_t__,scalar_t__) ;
 int truncate_pagecache (struct inode*,scalar_t__) ;

void truncate_setsize(struct inode *inode, loff_t newsize)
{
 loff_t oldsize = inode->i_size;

 i_size_write(inode, newsize);
 if (newsize > oldsize)
  pagecache_isize_extended(inode, oldsize, newsize);
 truncate_pagecache(inode, newsize);
}
