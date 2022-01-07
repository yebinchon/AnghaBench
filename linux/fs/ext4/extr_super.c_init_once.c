
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_inode_info {int vfs_inode; int i_mmap_sem; int i_data_sem; int xattr_sem; int i_orphan; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_rwsem (int *) ;
 int inode_init_once (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct ext4_inode_info *ei = (struct ext4_inode_info *) foo;

 INIT_LIST_HEAD(&ei->i_orphan);
 init_rwsem(&ei->xattr_sem);
 init_rwsem(&ei->i_data_sem);
 init_rwsem(&ei->i_mmap_sem);
 inode_init_once(&ei->vfs_inode);
}
