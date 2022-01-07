
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int ovl_dentry_lower (struct dentry*) ;
 int ovl_set_nlink_common (struct dentry*,int ,char*) ;

int ovl_set_nlink_lower(struct dentry *dentry)
{
 return ovl_set_nlink_common(dentry, ovl_dentry_lower(dentry), "L%+i");
}
