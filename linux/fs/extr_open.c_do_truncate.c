
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {unsigned int ia_valid; struct file* ia_file; scalar_t__ ia_size; } ;
struct file {int dummy; } ;
struct dentry {int d_inode; } ;
typedef scalar_t__ loff_t ;


 unsigned int ATTR_FILE ;
 int ATTR_FORCE ;
 unsigned int ATTR_SIZE ;
 int EINVAL ;
 int dentry_needs_remove_privs (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 int notify_change (struct dentry*,struct iattr*,int *) ;

int do_truncate(struct dentry *dentry, loff_t length, unsigned int time_attrs,
 struct file *filp)
{
 int ret;
 struct iattr newattrs;


 if (length < 0)
  return -EINVAL;

 newattrs.ia_size = length;
 newattrs.ia_valid = ATTR_SIZE | time_attrs;
 if (filp) {
  newattrs.ia_file = filp;
  newattrs.ia_valid |= ATTR_FILE;
 }


 ret = dentry_needs_remove_privs(dentry);
 if (ret < 0)
  return ret;
 if (ret)
  newattrs.ia_valid |= ret | ATTR_FORCE;

 inode_lock(dentry->d_inode);

 ret = notify_change(dentry, &newattrs, ((void*)0));
 inode_unlock(dentry->d_inode);
 return ret;
}
