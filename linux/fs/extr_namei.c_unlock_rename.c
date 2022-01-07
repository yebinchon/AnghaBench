
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_sb; int d_inode; } ;
struct TYPE_2__ {int s_vfs_rename_mutex; } ;


 int inode_unlock (int ) ;
 int mutex_unlock (int *) ;

void unlock_rename(struct dentry *p1, struct dentry *p2)
{
 inode_unlock(p1->d_inode);
 if (p1 != p2) {
  inode_unlock(p2->d_inode);
  mutex_unlock(&p1->d_sb->s_vfs_rename_mutex);
 }
}
