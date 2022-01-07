
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef scalar_t__ ino_t ;
struct TYPE_4__ {scalar_t__ s_namelen; } ;


 int ENAMETOOLONG ;
 struct dentry* ERR_PTR (int ) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 struct inode* minix_iget (int ,scalar_t__) ;
 scalar_t__ minix_inode_by_name (struct dentry*) ;
 TYPE_2__* minix_sb (int ) ;

__attribute__((used)) static struct dentry *minix_lookup(struct inode * dir, struct dentry *dentry, unsigned int flags)
{
 struct inode * inode = ((void*)0);
 ino_t ino;

 if (dentry->d_name.len > minix_sb(dir->i_sb)->s_namelen)
  return ERR_PTR(-ENAMETOOLONG);

 ino = minix_inode_by_name(dentry);
 if (ino)
  inode = minix_iget(dir->i_sb, ino);
 return d_splice_alias(inode, dentry);
}
