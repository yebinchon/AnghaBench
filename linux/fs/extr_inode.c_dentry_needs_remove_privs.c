
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ATTR_KILL_PRIV ;
 scalar_t__ IS_NOSEC (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int security_inode_need_killpriv (struct dentry*) ;
 int should_remove_suid (struct dentry*) ;

int dentry_needs_remove_privs(struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);
 int mask = 0;
 int ret;

 if (IS_NOSEC(inode))
  return 0;

 mask = should_remove_suid(dentry);
 ret = security_inode_need_killpriv(dentry);
 if (ret < 0)
  return ret;
 if (ret)
  mask |= ATTR_KILL_PRIV;
 return mask;
}
