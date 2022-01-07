
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int l_flags; int l_lock; int l_event; } ;
struct dlmfs_inode_private {TYPE_1__ ip_lockres; } ;
typedef int poll_table ;
typedef int __poll_t ;


 struct dlmfs_inode_private* DLMFS_I (struct inode*) ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 int USER_LOCK_BLOCKED ;
 struct inode* file_inode (struct file*) ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __poll_t dlmfs_file_poll(struct file *file, poll_table *wait)
{
 __poll_t event = 0;
 struct inode *inode = file_inode(file);
 struct dlmfs_inode_private *ip = DLMFS_I(inode);

 poll_wait(file, &ip->ip_lockres.l_event, wait);

 spin_lock(&ip->ip_lockres.l_lock);
 if (ip->ip_lockres.l_flags & USER_LOCK_BLOCKED)
  event = EPOLLIN | EPOLLRDNORM;
 spin_unlock(&ip->ip_lockres.l_lock);

 return event;
}
