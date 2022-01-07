
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int name; } ;
struct hist_entry {struct symbol* parent; } ;
typedef int int64_t ;


 int cmp_null (struct symbol*,struct symbol*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int64_t
sort__parent_cmp(struct hist_entry *left, struct hist_entry *right)
{
 struct symbol *sym_l = left->parent;
 struct symbol *sym_r = right->parent;

 if (!sym_l || !sym_r)
  return cmp_null(sym_l, sym_r);

 return strcmp(sym_r->name, sym_l->name);
}
