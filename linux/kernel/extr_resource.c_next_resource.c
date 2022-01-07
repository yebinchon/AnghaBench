
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {struct resource* sibling; struct resource* parent; struct resource* child; } ;



__attribute__((used)) static struct resource *next_resource(struct resource *p, bool sibling_only)
{

 if (sibling_only)
  return p->sibling;

 if (p->child)
  return p->child;
 while (!p->sibling && p->parent)
  p = p->parent;
 return p->sibling;
}
