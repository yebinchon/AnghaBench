
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct symbol {char* name; } ;
struct TYPE_9__ {int min_pcnt; } ;
struct perf_top {TYPE_3__* sym_evsel; scalar_t__ zero; TYPE_2__* evlist; TYPE_4__ annotation_opts; struct hist_entry* sym_filter_entry; } ;
struct TYPE_6__ {int map; struct symbol* sym; } ;
struct hist_entry {TYPE_1__ ms; int hists; } ;
struct evsel {int dummy; } ;
struct annotation {int lock; int * src; } ;
struct TYPE_8__ {int idx; } ;
struct TYPE_7__ {scalar_t__ enabled; } ;


 struct evsel* hists_to_evsel (int ) ;
 char* perf_evsel__name (TYPE_3__*) ;
 int printf (char*,...) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int symbol__annotate_decay_histogram (struct symbol*,int ) ;
 int symbol__annotate_printf (struct symbol*,int ,TYPE_3__*,TYPE_4__*) ;
 int symbol__annotate_zero_histogram (struct symbol*,int ) ;
 struct annotation* symbol__annotation (struct symbol*) ;
 int symbol__calc_percent (struct symbol*,struct evsel*) ;

__attribute__((used)) static void perf_top__show_details(struct perf_top *top)
{
 struct hist_entry *he = top->sym_filter_entry;
 struct evsel *evsel;
 struct annotation *notes;
 struct symbol *symbol;
 int more;

 if (!he)
  return;

 evsel = hists_to_evsel(he->hists);

 symbol = he->ms.sym;
 notes = symbol__annotation(symbol);

 pthread_mutex_lock(&notes->lock);

 symbol__calc_percent(symbol, evsel);

 if (notes->src == ((void*)0))
  goto out_unlock;

 printf("Showing %s for %s\n", perf_evsel__name(top->sym_evsel), symbol->name);
 printf("  Events  Pcnt (>=%d%%)\n", top->annotation_opts.min_pcnt);

 more = symbol__annotate_printf(symbol, he->ms.map, top->sym_evsel, &top->annotation_opts);

 if (top->evlist->enabled) {
  if (top->zero)
   symbol__annotate_zero_histogram(symbol, top->sym_evsel->idx);
  else
   symbol__annotate_decay_histogram(symbol, top->sym_evsel->idx);
 }
 if (more != 0)
  printf("%d lines not displayed, maybe increase display entries [e]\n", more);
out_unlock:
 pthread_mutex_unlock(&notes->lock);
}
