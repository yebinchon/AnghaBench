
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int OVL_I (int ) ;
 int d_inode (struct dentry*) ;
 struct dentry* ovl_upperdentry_dereference (int ) ;

struct dentry *ovl_dentry_upper(struct dentry *dentry)
{
 return ovl_upperdentry_dereference(OVL_I(d_inode(dentry)));
}
