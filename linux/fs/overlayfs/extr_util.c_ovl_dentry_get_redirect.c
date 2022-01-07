
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {char const* redirect; } ;


 TYPE_1__* OVL_I (int ) ;
 int d_inode (struct dentry*) ;

const char *ovl_dentry_get_redirect(struct dentry *dentry)
{
 return OVL_I(d_inode(dentry))->redirect;
}
