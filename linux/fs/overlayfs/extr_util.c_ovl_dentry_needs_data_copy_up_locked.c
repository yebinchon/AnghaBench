
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int OVL_UPPERDATA ;
 int d_inode (struct dentry*) ;
 int ovl_open_flags_need_copy_up (int) ;
 int ovl_test_flag (int ,int ) ;

bool ovl_dentry_needs_data_copy_up_locked(struct dentry *dentry, int flags)
{
 if (!ovl_open_flags_need_copy_up(flags))
  return 0;

 return !ovl_test_flag(OVL_UPPERDATA, d_inode(dentry));
}
