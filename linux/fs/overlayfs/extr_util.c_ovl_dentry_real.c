
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 struct dentry* ovl_dentry_lower (struct dentry*) ;
 scalar_t__ ovl_dentry_upper (struct dentry*) ;

struct dentry *ovl_dentry_real(struct dentry *dentry)
{
 return ovl_dentry_upper(dentry) ?: ovl_dentry_lower(dentry);
}
