
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {struct kernfs_node* parent; } ;


 int pr_crit_once (char*) ;

__attribute__((used)) static struct kernfs_node *find_next_ancestor(struct kernfs_node *child,
           struct kernfs_node *parent)
{
 if (child == parent) {
  pr_crit_once("BUG in find_next_ancestor: called with parent == child");
  return ((void*)0);
 }

 while (child->parent != parent) {
  if (!child->parent)
   return ((void*)0);
  child = child->parent;
 }

 return child;
}
