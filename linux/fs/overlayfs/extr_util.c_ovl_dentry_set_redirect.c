
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_inode {char const* redirect; } ;
struct dentry {int dummy; } ;


 struct ovl_inode* OVL_I (int ) ;
 int d_inode (struct dentry*) ;
 int kfree (char const*) ;

void ovl_dentry_set_redirect(struct dentry *dentry, const char *redirect)
{
 struct ovl_inode *oi = OVL_I(d_inode(dentry));

 kfree(oi->redirect);
 oi->redirect = redirect;
}
