
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_inode_array {int count; int * inodes; } ;


 int iput (int ) ;
 int kfree (struct ext4_xattr_inode_array*) ;

void ext4_xattr_inode_array_free(struct ext4_xattr_inode_array *ea_inode_array)
{
 int idx;

 if (ea_inode_array == ((void*)0))
  return;

 for (idx = 0; idx < ea_inode_array->count; ++idx)
  iput(ea_inode_array->inodes[idx]);
 kfree(ea_inode_array);
}
