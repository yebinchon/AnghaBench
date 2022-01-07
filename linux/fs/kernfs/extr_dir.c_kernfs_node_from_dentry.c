
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_node {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {int * s_op; } ;


 int d_really_is_negative (struct dentry*) ;
 struct kernfs_node* kernfs_dentry_node (struct dentry*) ;
 int kernfs_sops ;

struct kernfs_node *kernfs_node_from_dentry(struct dentry *dentry)
{
 if (dentry->d_sb->s_op == &kernfs_sops &&
     !d_really_is_negative(dentry))
  return kernfs_dentry_node(dentry);
 return ((void*)0);
}
