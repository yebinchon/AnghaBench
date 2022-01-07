
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
 scalar_t__ VXFS_NAMELEN ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 struct inode* vxfs_iget (int ,scalar_t__) ;
 scalar_t__ vxfs_inode_by_name (struct inode*,struct dentry*) ;

__attribute__((used)) static struct dentry *
vxfs_lookup(struct inode *dip, struct dentry *dp, unsigned int flags)
{
 struct inode *ip = ((void*)0);
 ino_t ino;

 if (dp->d_name.len > VXFS_NAMELEN)
  return ERR_PTR(-ENAMETOOLONG);

 ino = vxfs_inode_by_name(dip, dp);
 if (ino)
  ip = vxfs_iget(dip->i_sb, ino);
 return d_splice_alias(ip, dp);
}
