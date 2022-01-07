
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union kernfs_node_id {scalar_t__ generation; int ino; } ;
struct kernfs_root {int dummy; } ;
struct TYPE_2__ {scalar_t__ generation; } ;
struct kernfs_node {TYPE_1__ id; } ;


 struct kernfs_node* kernfs_find_and_get_node_by_ino (struct kernfs_root*,int ) ;
 int kernfs_put (struct kernfs_node*) ;

struct kernfs_node *kernfs_get_node_by_id(struct kernfs_root *root,
 const union kernfs_node_id *id)
{
 struct kernfs_node *kn;

 kn = kernfs_find_and_get_node_by_ino(root, id->ino);
 if (!kn)
  return ((void*)0);
 if (kn->id.generation != id->generation) {
  kernfs_put(kn);
  return ((void*)0);
 }
 return kn;
}
