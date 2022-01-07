
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_backing_inode (struct dentry*) ;
 int ima_protect_xattr (struct dentry*,char const*,int *,int ) ;
 int ima_reset_appraise_flags (int ,int ) ;

int ima_inode_removexattr(struct dentry *dentry, const char *xattr_name)
{
 int result;

 result = ima_protect_xattr(dentry, xattr_name, ((void*)0), 0);
 if (result == 1) {
  ima_reset_appraise_flags(d_backing_inode(dentry), 0);
  result = 0;
 }
 return result;
}
