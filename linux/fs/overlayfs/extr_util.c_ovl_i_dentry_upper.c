
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int OVL_I (struct inode*) ;
 struct dentry* ovl_upperdentry_dereference (int ) ;

struct dentry *ovl_i_dentry_upper(struct inode *inode)
{
 return ovl_upperdentry_dereference(OVL_I(inode));
}
