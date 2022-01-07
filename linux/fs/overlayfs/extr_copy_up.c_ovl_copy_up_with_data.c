
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int O_WRONLY ;
 int ovl_copy_up_flags (struct dentry*,int ) ;

int ovl_copy_up_with_data(struct dentry *dentry)
{
 return ovl_copy_up_flags(dentry, O_WRONLY);
}
