
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_entry {TYPE_1__* branch_info; } ;
typedef int int64_t ;
struct TYPE_2__ {void* srcline_to; int to; } ;


 void* addr_map_symbol__srcline (int *) ;
 int strcmp (void*,void*) ;

__attribute__((used)) static int64_t
sort__srcline_to_cmp(struct hist_entry *left, struct hist_entry *right)
{
 if (!left->branch_info->srcline_to)
  left->branch_info->srcline_to = addr_map_symbol__srcline(&left->branch_info->to);

 if (!right->branch_info->srcline_to)
  right->branch_info->srcline_to = addr_map_symbol__srcline(&right->branch_info->to);

 return strcmp(right->branch_info->srcline_to, left->branch_info->srcline_to);
}
