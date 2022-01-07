
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {int ia_valid; } ;
struct dentry {int dummy; } ;


 int ATTR_GID ;
 int ATTR_UID ;
 int reiserfs_setattr (struct dentry*,struct iattr*) ;

__attribute__((used)) static int chown_one_xattr(struct dentry *dentry, void *data)
{
 struct iattr *attrs = data;
 int ia_valid = attrs->ia_valid;
 int err;






 attrs->ia_valid &= (ATTR_UID|ATTR_GID);
 err = reiserfs_setattr(dentry, attrs);
 attrs->ia_valid = ia_valid;

 return err;
}
