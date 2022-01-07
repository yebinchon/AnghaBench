
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_root {int kn; } ;
struct kernfs_node {struct kernfs_node* parent; } ;


 size_t kernfs_depth (int ,struct kernfs_node*) ;
 struct kernfs_root* kernfs_root (struct kernfs_node*) ;

__attribute__((used)) static struct kernfs_node *kernfs_common_ancestor(struct kernfs_node *a,
        struct kernfs_node *b)
{
 size_t da, db;
 struct kernfs_root *ra = kernfs_root(a), *rb = kernfs_root(b);

 if (ra != rb)
  return ((void*)0);

 da = kernfs_depth(ra->kn, a);
 db = kernfs_depth(rb->kn, b);

 while (da > db) {
  a = a->parent;
  da--;
 }
 while (db > da) {
  b = b->parent;
  db--;
 }


 while (b != a) {
  b = b->parent;
  a = a->parent;
 }

 return a;
}
