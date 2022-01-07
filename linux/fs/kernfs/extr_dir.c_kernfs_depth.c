
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {struct kernfs_node* parent; } ;



__attribute__((used)) static size_t kernfs_depth(struct kernfs_node *from, struct kernfs_node *to)
{
 size_t depth = 0;

 while (to->parent && to != from) {
  depth++;
  to = to->parent;
 }
 return depth;
}
