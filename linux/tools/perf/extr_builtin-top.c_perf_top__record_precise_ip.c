
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct symbol {int name; } ;
struct perf_top {TYPE_2__* sym_filter_entry; } ;
struct perf_sample {int dummy; } ;
struct TYPE_8__ {TYPE_5__* map; struct symbol* sym; } ;
struct hist_entry {TYPE_4__* hists; TYPE_3__ ms; } ;
struct evsel {int dummy; } ;
struct annotation {int lock; } ;
struct TYPE_10__ {int erange_warned; } ;
struct TYPE_9__ {int lock; } ;
struct TYPE_6__ {struct symbol* sym; } ;
struct TYPE_7__ {TYPE_1__ ms; } ;


 int ENOMEM ;
 int ERANGE ;
 int hist_entry__inc_addr_samples (struct hist_entry*,struct perf_sample*,struct evsel*,int ) ;
 int pr_err (char*,int ) ;
 int pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_trylock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sleep (int) ;
 struct annotation* symbol__annotation (struct symbol*) ;
 int ui__warn_map_erange (TYPE_5__*,struct symbol*,int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ use_browser ;

__attribute__((used)) static void perf_top__record_precise_ip(struct perf_top *top,
     struct hist_entry *he,
     struct perf_sample *sample,
     struct evsel *evsel, u64 ip)
{
 struct annotation *notes;
 struct symbol *sym = he->ms.sym;
 int err = 0;

 if (sym == ((void*)0) || (use_browser == 0 &&
       (top->sym_filter_entry == ((void*)0) ||
        top->sym_filter_entry->ms.sym != sym)))
  return;

 notes = symbol__annotation(sym);

 if (pthread_mutex_trylock(&notes->lock))
  return;

 err = hist_entry__inc_addr_samples(he, sample, evsel, ip);

 pthread_mutex_unlock(&notes->lock);

 if (unlikely(err)) {




  pthread_mutex_unlock(&he->hists->lock);

  if (err == -ERANGE && !he->ms.map->erange_warned)
   ui__warn_map_erange(he->ms.map, sym, ip);
  else if (err == -ENOMEM) {
   pr_err("Not enough memory for annotating '%s' symbol!\n",
          sym->name);
   sleep(1);
  }

  pthread_mutex_lock(&he->hists->lock);
 }
}
