
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef scalar_t__ ino_t ;


 int ENAMETOOLONG ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ SYSV_NAMELEN ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 struct inode* sysv_iget (int ,scalar_t__) ;
 scalar_t__ sysv_inode_by_name (struct dentry*) ;

__attribute__((used)) static struct dentry *sysv_lookup(struct inode * dir, struct dentry * dentry, unsigned int flags)
{
 struct inode * inode = ((void*)0);
 ino_t ino;

 if (dentry->d_name.len > SYSV_NAMELEN)
  return ERR_PTR(-ENAMETOOLONG);
 ino = sysv_inode_by_name(dentry);
 if (ino)
  inode = sysv_iget(dir->i_sb, ino);
 return d_splice_alias(inode, dentry);
}
