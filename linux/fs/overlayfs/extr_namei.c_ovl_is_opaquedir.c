
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int OVL_XATTR_OPAQUE ;
 int ovl_check_dir_xattr (struct dentry*,int ) ;

__attribute__((used)) static bool ovl_is_opaquedir(struct dentry *dentry)
{
 return ovl_check_dir_xattr(dentry, OVL_XATTR_OPAQUE);
}
