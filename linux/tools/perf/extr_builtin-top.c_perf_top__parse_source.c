
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct symbol {int name; } ;
struct perf_top {struct hist_entry* sym_filter_entry; int annotation_opts; TYPE_3__* evlist; } ;
struct map {TYPE_4__* dso; } ;
struct TYPE_5__ {struct map* map; struct symbol* sym; } ;
struct hist_entry {TYPE_1__ ms; int hists; } ;
struct evsel {int dummy; } ;
struct annotation {int lock; } ;
typedef int msg ;
struct TYPE_8__ {scalar_t__ symtab_type; } ;
struct TYPE_6__ {int nr_entries; } ;
struct TYPE_7__ {TYPE_2__ core; } ;


 int BUFSIZ ;
 scalar_t__ DSO_BINARY_TYPE__KALLSYMS ;
 int dso__is_kcore (TYPE_4__*) ;
 struct evsel* hists_to_evsel (int ) ;
 int pr_err (char*,int ,...) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sleep (int) ;
 int symbol__annotate (struct symbol*,struct map*,struct evsel*,int ,int *,int *) ;
 struct annotation* symbol__annotation (struct symbol*) ;
 int symbol__hists (struct symbol*,int ) ;
 int symbol__strerror_disassemble (struct symbol*,struct map*,int,char*,int) ;

__attribute__((used)) static int perf_top__parse_source(struct perf_top *top, struct hist_entry *he)
{
 struct evsel *evsel;
 struct symbol *sym;
 struct annotation *notes;
 struct map *map;
 int err = -1;

 if (!he || !he->ms.sym)
  return -1;

 evsel = hists_to_evsel(he->hists);

 sym = he->ms.sym;
 map = he->ms.map;




 if (map->dso->symtab_type == DSO_BINARY_TYPE__KALLSYMS &&
     !dso__is_kcore(map->dso)) {
  pr_err("Can't annotate %s: No vmlinux file was found in the "
         "path\n", sym->name);
  sleep(1);
  return -1;
 }

 notes = symbol__annotation(sym);
 pthread_mutex_lock(&notes->lock);

 if (!symbol__hists(sym, top->evlist->core.nr_entries)) {
  pthread_mutex_unlock(&notes->lock);
  pr_err("Not enough memory for annotating '%s' symbol!\n",
         sym->name);
  sleep(1);
  return err;
 }

 err = symbol__annotate(sym, map, evsel, 0, &top->annotation_opts, ((void*)0));
 if (err == 0) {
  top->sym_filter_entry = he;
 } else {
  char msg[BUFSIZ];
  symbol__strerror_disassemble(sym, map, err, msg, sizeof(msg));
  pr_err("Couldn't annotate %s: %s\n", sym->name, msg);
 }

 pthread_mutex_unlock(&notes->lock);
 return err;
}
