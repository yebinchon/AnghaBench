
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;
struct inode {scalar_t__ i_security; } ;


 int call_rcu (struct rcu_head*,int ) ;
 int call_void_hook (int ,struct inode*) ;
 int inode_free_by_rcu ;
 int inode_free_security ;
 int integrity_inode_free (struct inode*) ;

void security_inode_free(struct inode *inode)
{
 integrity_inode_free(inode);
 call_void_hook(inode_free_security, inode);
 if (inode->i_security)
  call_rcu((struct rcu_head *)inode->i_security,
    inode_free_by_rcu);
}
