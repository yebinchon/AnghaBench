
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode_security_struct {scalar_t__ initialized; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ initialized; } ;


 int ECHILD ;
 scalar_t__ LABEL_INITIALIZED ;
 int inode_doinit_with_dentry (struct inode*,struct dentry*) ;
 int might_sleep_if (int) ;
 struct inode_security_struct* selinux_inode (struct inode*) ;
 TYPE_1__ selinux_state ;

__attribute__((used)) static int __inode_security_revalidate(struct inode *inode,
           struct dentry *dentry,
           bool may_sleep)
{
 struct inode_security_struct *isec = selinux_inode(inode);

 might_sleep_if(may_sleep);

 if (selinux_state.initialized &&
     isec->initialized != LABEL_INITIALIZED) {
  if (!may_sleep)
   return -ECHILD;






  inode_doinit_with_dentry(inode, dentry);
 }
 return 0;
}
