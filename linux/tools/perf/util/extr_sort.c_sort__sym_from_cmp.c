
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hist_entry {TYPE_1__* branch_info; } ;
struct addr_map_symbol {int sym; int addr; } ;
typedef int int64_t ;
struct TYPE_3__ {struct addr_map_symbol from; } ;


 int _sort__addr_cmp (int ,int ) ;
 int _sort__sym_cmp (int ,int ) ;
 int cmp_null (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int64_t
sort__sym_from_cmp(struct hist_entry *left, struct hist_entry *right)
{
 struct addr_map_symbol *from_l = &left->branch_info->from;
 struct addr_map_symbol *from_r = &right->branch_info->from;

 if (!left->branch_info || !right->branch_info)
  return cmp_null(left->branch_info, right->branch_info);

 from_l = &left->branch_info->from;
 from_r = &right->branch_info->from;

 if (!from_l->sym && !from_r->sym)
  return _sort__addr_cmp(from_l->addr, from_r->addr);

 return _sort__sym_cmp(from_l->sym, from_r->sym);
}
