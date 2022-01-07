
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 scalar_t__ d_inode (struct dentry*) ;
 struct dentry* ovl_dentry_upper (struct dentry*) ;

__attribute__((used)) static bool ovl_matches_upper(struct dentry *dentry, struct dentry *upper)
{
 return d_inode(ovl_dentry_upper(dentry)) == d_inode(upper);
}
