
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_inode (struct dentry*) ;
 int ovl_has_upperdata (int ) ;
 int ovl_open_flags_need_copy_up (int) ;

bool ovl_dentry_needs_data_copy_up(struct dentry *dentry, int flags)
{
 if (!ovl_open_flags_need_copy_up(flags))
  return 0;

 return !ovl_has_upperdata(d_inode(dentry));
}
