
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; } ;


 scalar_t__ ovl_dentry_is_opaque (struct dentry*) ;

bool ovl_dentry_is_whiteout(struct dentry *dentry)
{
 return !dentry->d_inode && ovl_dentry_is_opaque(dentry);
}
