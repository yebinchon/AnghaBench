
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_inode {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void ovl_inode_init_once(void *foo)
{
 struct ovl_inode *oi = foo;

 inode_init_once(&oi->vfs_inode);
}
