
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; } ;


 int DCACHE_DISCONNECTED ;
 scalar_t__ ovl_dentry_has_upper_alias (struct dentry*) ;
 int ovl_dentry_needs_data_copy_up_locked (struct dentry*,int) ;
 scalar_t__ ovl_dentry_upper (struct dentry*) ;

__attribute__((used)) static bool ovl_already_copied_up_locked(struct dentry *dentry, int flags)
{
 bool disconnected = dentry->d_flags & DCACHE_DISCONNECTED;

 if (ovl_dentry_upper(dentry) &&
     (ovl_dentry_has_upper_alias(dentry) || disconnected) &&
     !ovl_dentry_needs_data_copy_up_locked(dentry, flags))
  return 1;

 return 0;
}
