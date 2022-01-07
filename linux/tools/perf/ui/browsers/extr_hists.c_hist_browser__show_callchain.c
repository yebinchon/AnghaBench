
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int period; } ;
struct hist_entry {int sorted_chain; TYPE_2__ stat; TYPE_1__* stat_acc; int hists; } ;
struct hist_browser {struct hist_entry* he_selection; } ;
struct callchain_print_arg {scalar_t__ is_current_entry; } ;
typedef int print_callchain_entry_fn ;
typedef int check_output_full_fn ;
struct TYPE_8__ {scalar_t__ mode; } ;
struct TYPE_7__ {scalar_t__ cumulate_callchain; } ;
struct TYPE_5__ {int period; } ;


 scalar_t__ CHAIN_FLAT ;
 scalar_t__ CHAIN_FOLDED ;
 TYPE_4__ callchain_param ;
 int hist_browser__show_callchain_flat (struct hist_browser*,int *,unsigned short,int ,int ,int ,struct callchain_print_arg*,int ) ;
 int hist_browser__show_callchain_folded (struct hist_browser*,int *,unsigned short,int ,int ,int ,struct callchain_print_arg*,int ) ;
 int hist_browser__show_callchain_graph (struct hist_browser*,int *,int,unsigned short,int ,int ,int ,struct callchain_print_arg*,int ) ;
 int hists__total_period (int ) ;
 TYPE_3__ symbol_conf ;

__attribute__((used)) static int hist_browser__show_callchain(struct hist_browser *browser,
     struct hist_entry *entry, int level,
     unsigned short row,
     print_callchain_entry_fn print,
     struct callchain_print_arg *arg,
     check_output_full_fn is_output_full)
{
 u64 total = hists__total_period(entry->hists);
 u64 parent_total;
 int printed;

 if (symbol_conf.cumulate_callchain)
  parent_total = entry->stat_acc->period;
 else
  parent_total = entry->stat.period;

 if (callchain_param.mode == CHAIN_FLAT) {
  printed = hist_browser__show_callchain_flat(browser,
      &entry->sorted_chain, row,
      total, parent_total, print, arg,
      is_output_full);
 } else if (callchain_param.mode == CHAIN_FOLDED) {
  printed = hist_browser__show_callchain_folded(browser,
      &entry->sorted_chain, row,
      total, parent_total, print, arg,
      is_output_full);
 } else {
  printed = hist_browser__show_callchain_graph(browser,
      &entry->sorted_chain, level, row,
      total, parent_total, print, arg,
      is_output_full);
 }

 if (arg->is_current_entry)
  browser->he_selection = entry;

 return printed;
}
