
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct rb_node {int dummy; } ;
struct hist_browser {void* nr_hierarchy_entries; void* nr_non_filtered_entries; int min_pcnt; TYPE_1__* hists; } ;
struct TYPE_4__ {int report_hierarchy; } ;
struct TYPE_3__ {void* nr_non_filtered_entries; int entries; } ;


 struct rb_node* hists__filter_entries (struct rb_node*,int ) ;
 struct rb_node* rb_first_cached (int *) ;
 struct rb_node* rb_hierarchy_next (struct rb_node*) ;
 TYPE_2__ symbol_conf ;

__attribute__((used)) static void hist_browser__update_nr_entries(struct hist_browser *hb)
{
 u64 nr_entries = 0;
 struct rb_node *nd = rb_first_cached(&hb->hists->entries);

 if (hb->min_pcnt == 0 && !symbol_conf.report_hierarchy) {
  hb->nr_non_filtered_entries = hb->hists->nr_non_filtered_entries;
  return;
 }

 while ((nd = hists__filter_entries(nd, hb->min_pcnt)) != ((void*)0)) {
  nr_entries++;
  nd = rb_hierarchy_next(nd);
 }

 hb->nr_non_filtered_entries = nr_entries;
 hb->nr_hierarchy_entries = nr_entries;
}
