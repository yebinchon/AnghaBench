
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int i_mode; } ;


 TYPE_1__* d_inode (struct dentry*) ;
 scalar_t__ ovl_already_copied_up (struct dentry*,int) ;
 int ovl_open_flags_need_copy_up (int) ;
 scalar_t__ special_file (int ) ;

__attribute__((used)) static bool ovl_open_need_copy_up(struct dentry *dentry, int flags)
{

 if (ovl_already_copied_up(dentry, flags))
  return 0;

 if (special_file(d_inode(dentry)->i_mode))
  return 0;

 if (!ovl_open_flags_need_copy_up(flags))
  return 0;

 return 1;
}
