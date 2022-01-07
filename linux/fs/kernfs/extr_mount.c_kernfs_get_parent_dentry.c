
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int parent; } ;
struct dentry {int d_sb; } ;


 struct dentry* d_obtain_alias (int ) ;
 struct kernfs_node* kernfs_dentry_node (struct dentry*) ;
 int kernfs_get_inode (int ,int ) ;

__attribute__((used)) static struct dentry *kernfs_get_parent_dentry(struct dentry *child)
{
 struct kernfs_node *kn = kernfs_dentry_node(child);

 return d_obtain_alias(kernfs_get_inode(child->d_sb, kn->parent));
}
