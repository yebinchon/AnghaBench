
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode_security_struct {int initialized; int task_sid; int sclass; int sid; struct inode* inode; int list; int lock; } ;
struct inode {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int LABEL_INVALID ;
 int SECCLASS_FILE ;
 int SECINITSID_UNLABELED ;
 int current_sid () ;
 struct inode_security_struct* selinux_inode (struct inode*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int inode_alloc_security(struct inode *inode)
{
 struct inode_security_struct *isec = selinux_inode(inode);
 u32 sid = current_sid();

 spin_lock_init(&isec->lock);
 INIT_LIST_HEAD(&isec->list);
 isec->inode = inode;
 isec->sid = SECINITSID_UNLABELED;
 isec->sclass = SECCLASS_FILE;
 isec->task_sid = sid;
 isec->initialized = LABEL_INVALID;

 return 0;
}
