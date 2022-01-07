
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct romfs_inode_info {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void romfs_i_init_once(void *_inode)
{
 struct romfs_inode_info *inode = _inode;

 inode_init_once(&inode->vfs_inode);
}
