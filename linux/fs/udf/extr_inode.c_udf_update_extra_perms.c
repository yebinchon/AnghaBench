
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct udf_inode_info {int i_extraPerms; } ;
struct inode {int dummy; } ;


 int FE_DELETE_PERMS ;
 int FE_PERM_G_DELETE ;
 int FE_PERM_O_DELETE ;
 int FE_PERM_U_DELETE ;
 struct udf_inode_info* UDF_I (struct inode*) ;

void udf_update_extra_perms(struct inode *inode, umode_t mode)
{
 struct udf_inode_info *iinfo = UDF_I(inode);





 iinfo->i_extraPerms &= ~FE_DELETE_PERMS;
 if (mode & 0200)
  iinfo->i_extraPerms |= FE_PERM_U_DELETE;
 if (mode & 0020)
  iinfo->i_extraPerms |= FE_PERM_G_DELETE;
 if (mode & 0002)
  iinfo->i_extraPerms |= FE_PERM_O_DELETE;
}
