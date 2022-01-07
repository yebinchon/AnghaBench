
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iattr {int ia_valid; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int i_ino; } ;


 int ATTR_SIZE ;
 int EPERM ;
 scalar_t__ IS_VERITY (TYPE_1__*) ;
 TYPE_1__* d_inode (struct dentry*) ;
 int pr_debug (char*,int ) ;

int fsverity_prepare_setattr(struct dentry *dentry, struct iattr *attr)
{
 if (IS_VERITY(d_inode(dentry)) && (attr->ia_valid & ATTR_SIZE)) {
  pr_debug("Denying truncate of verity file (ino %lu)\n",
    d_inode(dentry)->i_ino);
  return -EPERM;
 }
 return 0;
}
