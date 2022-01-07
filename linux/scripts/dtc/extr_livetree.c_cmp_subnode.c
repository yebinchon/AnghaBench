
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int cmp_subnode(const void *ax, const void *bx)
{
 const struct node *a, *b;

 a = *((const struct node * const *)ax);
 b = *((const struct node * const *)bx);

 return strcmp(a->name, b->name);
}
