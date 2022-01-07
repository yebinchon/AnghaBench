
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hist_entry {TYPE_2__* branch_info; } ;
typedef int int64_t ;
struct TYPE_4__ {scalar_t__ abort; } ;
struct TYPE_5__ {TYPE_1__ flags; } ;


 int cmp_null (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static int64_t
sort__abort_cmp(struct hist_entry *left, struct hist_entry *right)
{
 if (!left->branch_info || !right->branch_info)
  return cmp_null(left->branch_info, right->branch_info);

 return left->branch_info->flags.abort !=
  right->branch_info->flags.abort;
}
