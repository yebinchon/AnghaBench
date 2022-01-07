
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int i_nlink; } ;


 TYPE_1__* d_inode (struct dentry*) ;
 scalar_t__ d_is_dir (struct dentry*) ;
 struct dentry* ovl_dentry_lower (struct dentry*) ;

__attribute__((used)) static bool ovl_need_absolute_redirect(struct dentry *dentry, bool samedir)
{
 struct dentry *lowerdentry;

 if (!samedir)
  return 1;

 if (d_is_dir(dentry))
  return 0;
 lowerdentry = ovl_dentry_lower(dentry);
 return (d_inode(lowerdentry)->i_nlink > 1);
}
