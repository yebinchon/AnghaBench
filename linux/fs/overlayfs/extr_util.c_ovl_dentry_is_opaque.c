
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int OVL_E_OPAQUE ;
 int ovl_dentry_test_flag (int ,struct dentry*) ;

bool ovl_dentry_is_opaque(struct dentry *dentry)
{
 return ovl_dentry_test_flag(OVL_E_OPAQUE, dentry);
}
