
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_name {scalar_t__ type; int len; int name; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int EFSCORRUPTED ;
 scalar_t__ XFS_DIR3_FT_UNKNOWN ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xfs_mode_to_ftype (int) ;

__attribute__((used)) static int
xfs_dentry_mode_to_name(
 struct xfs_name *namep,
 struct dentry *dentry,
 int mode)
{
 namep->name = dentry->d_name.name;
 namep->len = dentry->d_name.len;
 namep->type = xfs_mode_to_ftype(mode);

 if (unlikely(namep->type == XFS_DIR3_FT_UNKNOWN))
  return -EFSCORRUPTED;

 return 0;
}
