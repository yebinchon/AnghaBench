
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hist_entry {TYPE_3__* branch_info; } ;
struct TYPE_5__ {TYPE_1__* sym; } ;
struct TYPE_6__ {TYPE_2__ from; } ;
struct TYPE_4__ {int name; } ;


 int HIST_FILTER__SYMBOL ;
 scalar_t__ strstr (int ,char const*) ;

__attribute__((used)) static int hist_entry__sym_from_filter(struct hist_entry *he, int type,
           const void *arg)
{
 const char *sym = arg;

 if (type != HIST_FILTER__SYMBOL)
  return -1;

 return sym && !(he->branch_info && he->branch_info->from.sym &&
   strstr(he->branch_info->from.sym->name, sym));
}
