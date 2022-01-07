
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_root {int dummy; } ;
struct TYPE_2__ {struct kernfs_root* root; } ;
struct kernfs_node {TYPE_1__ dir; struct kernfs_node* parent; } ;



__attribute__((used)) static inline struct kernfs_root *kernfs_root(struct kernfs_node *kn)
{

 if (kn->parent)
  kn = kn->parent;
 return kn->dir.root;
}
