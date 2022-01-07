
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_security_struct {int lock; int initialized; } ;
struct inode {int dummy; } ;


 int LABEL_INVALID ;
 struct inode_security_struct* selinux_inode (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void selinux_inode_invalidate_secctx(struct inode *inode)
{
 struct inode_security_struct *isec = selinux_inode(inode);

 spin_lock(&isec->lock);
 isec->initialized = LABEL_INVALID;
 spin_unlock(&isec->lock);
}
