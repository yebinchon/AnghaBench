
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iattr {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int EACCES ;
 TYPE_1__* NFS_FH (int ) ;
 int d_inode (struct dentry*) ;
 int nfs_setattr (struct dentry*,struct iattr*) ;

__attribute__((used)) static int
nfs_namespace_setattr(struct dentry *dentry, struct iattr *attr)
{
 if (NFS_FH(d_inode(dentry))->size != 0)
  return nfs_setattr(dentry, attr);
 return -EACCES;
}
