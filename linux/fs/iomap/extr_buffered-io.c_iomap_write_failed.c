
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef unsigned int loff_t ;


 unsigned int i_size_read (struct inode*) ;
 int max (unsigned int,unsigned int) ;
 int truncate_pagecache_range (struct inode*,int ,unsigned int) ;

__attribute__((used)) static void
iomap_write_failed(struct inode *inode, loff_t pos, unsigned len)
{
 loff_t i_size = i_size_read(inode);





 if (pos + len > i_size)
  truncate_pagecache_range(inode, max(pos, i_size), pos + len);
}
