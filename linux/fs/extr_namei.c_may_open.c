
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; } ;
struct inode {int i_mode; } ;
struct dentry {struct inode* d_inode; } ;


 int EACCES ;
 int EISDIR ;
 int ELOOP ;
 int ENOENT ;
 int EPERM ;
 scalar_t__ IS_APPEND (struct inode*) ;
 int MAY_OPEN ;
 int MAY_WRITE ;
 int O_ACCMODE ;
 int O_APPEND ;
 int O_NOATIME ;
 int O_RDONLY ;
 int O_TRUNC ;





 int S_IFMT ;

 int inode_owner_or_capable (struct inode*) ;
 int inode_permission (struct inode*,int) ;
 int may_open_dev (struct path const*) ;

__attribute__((used)) static int may_open(const struct path *path, int acc_mode, int flag)
{
 struct dentry *dentry = path->dentry;
 struct inode *inode = dentry->d_inode;
 int error;

 if (!inode)
  return -ENOENT;

 switch (inode->i_mode & S_IFMT) {
 case 129:
  return -ELOOP;
 case 131:
  if (acc_mode & MAY_WRITE)
   return -EISDIR;
  break;
 case 133:
 case 132:
  if (!may_open_dev(path))
   return -EACCES;

 case 130:
 case 128:
  flag &= ~O_TRUNC;
  break;
 }

 error = inode_permission(inode, MAY_OPEN | acc_mode);
 if (error)
  return error;




 if (IS_APPEND(inode)) {
  if ((flag & O_ACCMODE) != O_RDONLY && !(flag & O_APPEND))
   return -EPERM;
  if (flag & O_TRUNC)
   return -EPERM;
 }


 if (flag & O_NOATIME && !inode_owner_or_capable(inode))
  return -EPERM;

 return 0;
}
