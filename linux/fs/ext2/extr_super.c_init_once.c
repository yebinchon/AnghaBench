
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode_info {int vfs_inode; int dax_sem; int truncate_mutex; int xattr_sem; int i_meta_lock; } ;


 int init_rwsem (int *) ;
 int inode_init_once (int *) ;
 int mutex_init (int *) ;
 int rwlock_init (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct ext2_inode_info *ei = (struct ext2_inode_info *) foo;

 rwlock_init(&ei->i_meta_lock);



 mutex_init(&ei->truncate_mutex);



 inode_init_once(&ei->vfs_inode);
}
