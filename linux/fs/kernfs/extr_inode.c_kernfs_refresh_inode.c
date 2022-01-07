
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ subdirs; } ;
struct kernfs_node {TYPE_1__ dir; int mode; struct kernfs_iattrs* iattr; } ;
struct kernfs_iattrs {int dummy; } ;
struct inode {int i_mode; } ;


 scalar_t__ KERNFS_DIR ;
 scalar_t__ kernfs_type (struct kernfs_node*) ;
 int set_inode_attr (struct inode*,struct kernfs_iattrs*) ;
 int set_nlink (struct inode*,scalar_t__) ;

__attribute__((used)) static void kernfs_refresh_inode(struct kernfs_node *kn, struct inode *inode)
{
 struct kernfs_iattrs *attrs = kn->iattr;

 inode->i_mode = kn->mode;
 if (attrs)




  set_inode_attr(inode, attrs);

 if (kernfs_type(kn) == KERNFS_DIR)
  set_nlink(inode, kn->dir.subdirs + 2);
}
