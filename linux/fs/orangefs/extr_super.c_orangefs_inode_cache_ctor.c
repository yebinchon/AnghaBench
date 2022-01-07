
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_inode_s {int xattr_sem; int vfs_inode; } ;


 int init_rwsem (int *) ;
 int inode_init_once (int *) ;

__attribute__((used)) static void orangefs_inode_cache_ctor(void *req)
{
 struct orangefs_inode_s *orangefs_inode = req;

 inode_init_once(&orangefs_inode->vfs_inode);
 init_rwsem(&orangefs_inode->xattr_sem);
}
