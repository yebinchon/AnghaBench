
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; int i_sb; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ loff_t ;


 int hpfs_lock (int ) ;
 int hpfs_truncate (struct inode*) ;
 int hpfs_unlock (int ) ;
 int truncate_pagecache (struct inode*,scalar_t__) ;

__attribute__((used)) static void hpfs_write_failed(struct address_space *mapping, loff_t to)
{
 struct inode *inode = mapping->host;

 hpfs_lock(inode->i_sb);

 if (to > inode->i_size) {
  truncate_pagecache(inode, inode->i_size);
  hpfs_truncate(inode);
 }

 hpfs_unlock(inode->i_sb);
}
