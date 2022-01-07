
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_node {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct kernfs_node* i_private; } ;


 TYPE_1__* d_inode (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;

__attribute__((used)) static inline struct kernfs_node *kernfs_dentry_node(struct dentry *dentry)
{
 if (d_really_is_negative(dentry))
  return ((void*)0);
 return d_inode(dentry)->i_private;
}
