
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int ovl_copy_up_flags (struct dentry*,int ) ;

int ovl_copy_up(struct dentry *dentry)
{
 return ovl_copy_up_flags(dentry, 0);
}
