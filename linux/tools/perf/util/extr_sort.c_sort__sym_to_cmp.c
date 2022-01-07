
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hist_entry {TYPE_1__* branch_info; } ;
struct addr_map_symbol {int sym; int addr; } ;
typedef int int64_t ;
struct TYPE_3__ {struct addr_map_symbol to; } ;


 int _sort__addr_cmp (int ,int ) ;
 int _sort__sym_cmp (int ,int ) ;
 int cmp_null (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int64_t
sort__sym_to_cmp(struct hist_entry *left, struct hist_entry *right)
{
 struct addr_map_symbol *to_l, *to_r;

 if (!left->branch_info || !right->branch_info)
  return cmp_null(left->branch_info, right->branch_info);

 to_l = &left->branch_info->to;
 to_r = &right->branch_info->to;

 if (!to_l->sym && !to_r->sym)
  return _sort__addr_cmp(to_l->addr, to_r->addr);

 return _sort__sym_cmp(to_l->sym, to_r->sym);
}
