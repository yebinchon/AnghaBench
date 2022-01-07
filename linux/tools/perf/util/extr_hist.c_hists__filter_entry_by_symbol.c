
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hists {int * symbol_filter_str; } ;
struct TYPE_4__ {TYPE_1__* sym; } ;
struct hist_entry {int filtered; TYPE_2__ ms; } ;
struct TYPE_3__ {int name; } ;


 int HIST_FILTER__SYMBOL ;
 int * strstr (int ,int *) ;

__attribute__((used)) static bool hists__filter_entry_by_symbol(struct hists *hists,
       struct hist_entry *he)
{
 if (hists->symbol_filter_str != ((void*)0) &&
     (!he->ms.sym || strstr(he->ms.sym->name,
       hists->symbol_filter_str) == ((void*)0))) {
  he->filtered |= (1 << HIST_FILTER__SYMBOL);
  return 1;
 }

 return 0;
}
