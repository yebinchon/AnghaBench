
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sym; } ;
struct hist_entry {TYPE_1__ ms; } ;
typedef int int64_t ;
struct TYPE_5__ {int name; } ;


 int cmp_null (TYPE_2__*,TYPE_2__*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int64_t
sort__sym_sort(struct hist_entry *left, struct hist_entry *right)
{
 if (!left->ms.sym || !right->ms.sym)
  return cmp_null(left->ms.sym, right->ms.sym);

 return strcmp(right->ms.sym->name, left->ms.sym->name);
}
