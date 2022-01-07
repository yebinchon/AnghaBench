
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nr_non_filtered_samples; } ;
struct hists {TYPE_1__ stats; } ;
struct TYPE_7__ {scalar_t__ nr_events; } ;
struct hist_entry {int filtered; int unfolded; int has_no_entry; TYPE_3__ stat; scalar_t__ nr_rows; scalar_t__ row_offset; struct hist_entry* parent_he; } ;
typedef enum hist_filter { ____Placeholder_hist_filter } hist_filter ;
struct TYPE_6__ {scalar_t__ report_hierarchy; } ;


 int he_stat__add_stat (TYPE_3__*,TYPE_3__*) ;
 int hists__calc_col_len (struct hists*,struct hist_entry*) ;
 int hists__inc_filter_stats (struct hists*,struct hist_entry*) ;
 TYPE_2__ symbol_conf ;

__attribute__((used)) static void hists__remove_entry_filter(struct hists *hists, struct hist_entry *h,
           enum hist_filter filter)
{
 h->filtered &= ~(1 << filter);

 if (symbol_conf.report_hierarchy) {
  struct hist_entry *parent = h->parent_he;

  while (parent) {
   he_stat__add_stat(&parent->stat, &h->stat);

   parent->filtered &= ~(1 << filter);

   if (parent->filtered)
    goto next;


   parent->unfolded = 0;
   parent->has_no_entry = 0;
   parent->row_offset = 0;
   parent->nr_rows = 0;
next:
   parent = parent->parent_he;
  }
 }

 if (h->filtered)
  return;


 h->unfolded = 0;
 h->has_no_entry = 0;
 h->row_offset = 0;
 h->nr_rows = 0;

 hists->stats.nr_non_filtered_samples += h->stat.nr_events;

 hists__inc_filter_stats(hists, h);
 hists__calc_col_len(hists, h);
}
