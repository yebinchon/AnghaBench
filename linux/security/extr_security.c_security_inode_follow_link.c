
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int IS_PRIVATE (struct inode*) ;
 int call_int_hook (int ,int ,struct dentry*,struct inode*,int) ;
 int inode_follow_link ;
 scalar_t__ unlikely (int ) ;

int security_inode_follow_link(struct dentry *dentry, struct inode *inode,
          bool rcu)
{
 if (unlikely(IS_PRIVATE(inode)))
  return 0;
 return call_int_hook(inode_follow_link, 0, dentry, inode, rcu);
}
