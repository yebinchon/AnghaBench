
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct dentry* d_parent; } ;


 int IS_ROOT (struct dentry*) ;

struct dentry *d_ancestor(struct dentry *p1, struct dentry *p2)
{
 struct dentry *p;

 for (p = p2; !IS_ROOT(p); p = p->d_parent) {
  if (p->d_parent == p1)
   return p;
 }
 return ((void*)0);
}
