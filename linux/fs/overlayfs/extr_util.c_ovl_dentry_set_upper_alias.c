
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int OVL_E_UPPER_ALIAS ;
 int ovl_dentry_set_flag (int ,struct dentry*) ;

void ovl_dentry_set_upper_alias(struct dentry *dentry)
{
 ovl_dentry_set_flag(OVL_E_UPPER_ALIAS, dentry);
}
