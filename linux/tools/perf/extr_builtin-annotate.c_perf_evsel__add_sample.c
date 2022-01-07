
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct perf_sample {int branch_stack; } ;
struct perf_annotate {scalar_t__ has_br_stack; int * sym_hist_filter; } ;
struct machine {int dummy; } ;
struct hists {int dummy; } ;
struct hist_entry {int dummy; } ;
struct evsel {int dummy; } ;
struct addr_location {int addr; TYPE_1__* map; TYPE_2__* sym; } ;
struct TYPE_6__ {int symbols; } ;
struct TYPE_5__ {int rb_node; int name; } ;
struct TYPE_4__ {TYPE_3__* dso; } ;


 int ENOMEM ;
 int dso__reset_find_symbol_cache (TYPE_3__*) ;
 struct hists* evsel__hists (struct evsel*) ;
 scalar_t__ has_annotation (struct perf_annotate*) ;
 int hist_entry__inc_addr_samples (struct hist_entry*,struct perf_sample*,struct evsel*,int ) ;
 struct hist_entry* hists__add_entry (struct hists*,struct addr_location*,int *,int *,int *,struct perf_sample*,int) ;
 int hists__inc_nr_samples (struct hists*,int) ;
 int process_branch_callback (struct evsel*,struct perf_sample*,struct addr_location*,struct perf_annotate*,struct machine*) ;
 int process_branch_stack (int ,struct addr_location*,struct perf_sample*) ;
 int rb_erase_cached (int *,int *) ;
 scalar_t__ strcmp (int *,int ) ;
 int symbol__delete (TYPE_2__*) ;

__attribute__((used)) static int perf_evsel__add_sample(struct evsel *evsel,
      struct perf_sample *sample,
      struct addr_location *al,
      struct perf_annotate *ann,
      struct machine *machine)
{
 struct hists *hists = evsel__hists(evsel);
 struct hist_entry *he;
 int ret;

 if ((!ann->has_br_stack || !has_annotation(ann)) &&
     ann->sym_hist_filter != ((void*)0) &&
     (al->sym == ((void*)0) ||
      strcmp(ann->sym_hist_filter, al->sym->name) != 0)) {





  if (al->sym != ((void*)0)) {
   rb_erase_cached(&al->sym->rb_node,
     &al->map->dso->symbols);
   symbol__delete(al->sym);
   dso__reset_find_symbol_cache(al->map->dso);
  }
  return 0;
 }





 process_branch_stack(sample->branch_stack, al, sample);

 if (ann->has_br_stack && has_annotation(ann))
  return process_branch_callback(evsel, sample, al, ann, machine);

 he = hists__add_entry(hists, al, ((void*)0), ((void*)0), ((void*)0), sample, 1);
 if (he == ((void*)0))
  return -ENOMEM;

 ret = hist_entry__inc_addr_samples(he, sample, evsel, al->addr);
 hists__inc_nr_samples(hists, 1);
 return ret;
}
