
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue_inode_info {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct mqueue_inode_info *p = (struct mqueue_inode_info *) foo;

 inode_init_once(&p->vfs_inode);
}
