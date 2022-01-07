
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbq_class {int level; struct cbq_class* children; struct cbq_class* sibling; struct cbq_class* tparent; } ;



__attribute__((used)) static void cbq_adjust_levels(struct cbq_class *this)
{
 if (this == ((void*)0))
  return;

 do {
  int level = 0;
  struct cbq_class *cl;

  cl = this->children;
  if (cl) {
   do {
    if (cl->level > level)
     level = cl->level;
   } while ((cl = cl->sibling) != this->children);
  }
  this->level = level + 1;
 } while ((this = this->tparent) != ((void*)0));
}
