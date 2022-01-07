
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_inode; TYPE_1__* d_sb; } ;
struct TYPE_2__ {int s_vfs_rename_mutex; } ;


 int I_MUTEX_CHILD ;
 int I_MUTEX_PARENT ;
 int I_MUTEX_PARENT2 ;
 struct dentry* d_ancestor (struct dentry*,struct dentry*) ;
 int inode_lock_nested (int ,int ) ;
 int mutex_lock (int *) ;

struct dentry *lock_rename(struct dentry *p1, struct dentry *p2)
{
 struct dentry *p;

 if (p1 == p2) {
  inode_lock_nested(p1->d_inode, I_MUTEX_PARENT);
  return ((void*)0);
 }

 mutex_lock(&p1->d_sb->s_vfs_rename_mutex);

 p = d_ancestor(p2, p1);
 if (p) {
  inode_lock_nested(p2->d_inode, I_MUTEX_PARENT);
  inode_lock_nested(p1->d_inode, I_MUTEX_CHILD);
  return p;
 }

 p = d_ancestor(p1, p2);
 if (p) {
  inode_lock_nested(p1->d_inode, I_MUTEX_PARENT);
  inode_lock_nested(p2->d_inode, I_MUTEX_CHILD);
  return p;
 }

 inode_lock_nested(p1->d_inode, I_MUTEX_PARENT);
 inode_lock_nested(p2->d_inode, I_MUTEX_PARENT2);
 return ((void*)0);
}
