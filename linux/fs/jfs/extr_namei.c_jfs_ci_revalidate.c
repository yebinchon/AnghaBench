
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 unsigned int LOOKUP_CREATE ;
 unsigned int LOOKUP_RENAME_TARGET ;
 scalar_t__ d_really_is_positive (struct dentry*) ;

__attribute__((used)) static int jfs_ci_revalidate(struct dentry *dentry, unsigned int flags)
{
 if (d_really_is_positive(dentry))
  return 1;





 if (!flags)
  return 0;






 if (flags & (LOOKUP_CREATE | LOOKUP_RENAME_TARGET))
  return 0;
 return 1;
}
