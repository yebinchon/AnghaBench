
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int ia_mode; int ia_gid; int ia_uid; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_gid; int s_uid; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int EPERM ;
 int UDF_FLAG_GID_SET ;
 int UDF_FLAG_UID_SET ;
 scalar_t__ UDF_QUERY_FLAG (struct super_block*,int ) ;
 TYPE_1__* UDF_SB (struct super_block*) ;
 struct inode* d_inode (struct dentry*) ;
 int gid_eq (int ,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int udf_setsize (struct inode*,scalar_t__) ;
 int udf_update_extra_perms (struct inode*,int ) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int udf_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 struct super_block *sb = inode->i_sb;
 int error;

 error = setattr_prepare(dentry, attr);
 if (error)
  return error;

 if ((attr->ia_valid & ATTR_UID) &&
     UDF_QUERY_FLAG(sb, UDF_FLAG_UID_SET) &&
     !uid_eq(attr->ia_uid, UDF_SB(sb)->s_uid))
  return -EPERM;
 if ((attr->ia_valid & ATTR_GID) &&
     UDF_QUERY_FLAG(sb, UDF_FLAG_GID_SET) &&
     !gid_eq(attr->ia_gid, UDF_SB(sb)->s_gid))
  return -EPERM;

 if ((attr->ia_valid & ATTR_SIZE) &&
     attr->ia_size != i_size_read(inode)) {
  error = udf_setsize(inode, attr->ia_size);
  if (error)
   return error;
 }

 if (attr->ia_valid & ATTR_MODE)
  udf_update_extra_perms(inode, attr->ia_mode);

 setattr_copy(inode, attr);
 mark_inode_dirty(inode);
 return 0;
}
