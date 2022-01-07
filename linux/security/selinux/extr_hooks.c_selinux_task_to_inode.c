
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct inode_security_struct {int lock; int initialized; int sid; int sclass; } ;
struct inode {int i_mode; } ;


 int LABEL_INITIALIZED ;
 int inode_mode_to_security_class (int ) ;
 struct inode_security_struct* selinux_inode (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static void selinux_task_to_inode(struct task_struct *p,
      struct inode *inode)
{
 struct inode_security_struct *isec = selinux_inode(inode);
 u32 sid = task_sid(p);

 spin_lock(&isec->lock);
 isec->sclass = inode_mode_to_security_class(inode->i_mode);
 isec->sid = sid;
 isec->initialized = LABEL_INITIALIZED;
 spin_unlock(&isec->lock);
}
