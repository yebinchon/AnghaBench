
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; scalar_t__ i_size; int i_sb; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int ia_gid; int ia_uid; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_root; } ;


 int ATTR_GID ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int EINVAL ;
 struct inode* d_inode (struct dentry*) ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 int hpfs_lock (int ) ;
 TYPE_1__* hpfs_sb (int ) ;
 int hpfs_truncate (struct inode*) ;
 int hpfs_unlock (int ) ;
 int hpfs_write_inode (struct inode*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int init_user_ns ;
 int inode_newsize_ok (struct inode*,scalar_t__) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int truncate_setsize (struct inode*,scalar_t__) ;

int hpfs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 int error = -EINVAL;

 hpfs_lock(inode->i_sb);
 if (inode->i_ino == hpfs_sb(inode->i_sb)->sb_root)
  goto out_unlock;
 if ((attr->ia_valid & ATTR_UID) &&
     from_kuid(&init_user_ns, attr->ia_uid) >= 0x10000)
  goto out_unlock;
 if ((attr->ia_valid & ATTR_GID) &&
     from_kgid(&init_user_ns, attr->ia_gid) >= 0x10000)
  goto out_unlock;
 if ((attr->ia_valid & ATTR_SIZE) && attr->ia_size > inode->i_size)
  goto out_unlock;

 error = setattr_prepare(dentry, attr);
 if (error)
  goto out_unlock;

 if ((attr->ia_valid & ATTR_SIZE) &&
     attr->ia_size != i_size_read(inode)) {
  error = inode_newsize_ok(inode, attr->ia_size);
  if (error)
   goto out_unlock;

  truncate_setsize(inode, attr->ia_size);
  hpfs_truncate(inode);
 }

 setattr_copy(inode, attr);

 hpfs_write_inode(inode);

 out_unlock:
 hpfs_unlock(inode->i_sb);
 return error;
}
