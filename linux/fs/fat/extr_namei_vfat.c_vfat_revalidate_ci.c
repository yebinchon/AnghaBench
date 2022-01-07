
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int ECHILD ;
 unsigned int LOOKUP_CREATE ;
 unsigned int LOOKUP_RCU ;
 unsigned int LOOKUP_RENAME_TARGET ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int vfat_revalidate_shortname (struct dentry*) ;

__attribute__((used)) static int vfat_revalidate_ci(struct dentry *dentry, unsigned int flags)
{
 if (flags & LOOKUP_RCU)
  return -ECHILD;
 if (d_really_is_positive(dentry))
  return 1;





 if (!flags)
  return 0;






 if (flags & (LOOKUP_CREATE | LOOKUP_RENAME_TARGET))
  return 0;

 return vfat_revalidate_shortname(dentry);
}
