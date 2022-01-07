
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int annotate2; } ;
struct report {scalar_t__ symbol_ipc; } ;
struct TYPE_2__ {int map; struct symbol* sym; } ;
struct hist_entry {TYPE_1__ ms; int hists; } ;
struct evsel {int dummy; } ;


 int annotation__default_options ;
 struct evsel* hists_to_evsel (int ) ;
 int symbol__annotate2 (struct symbol*,int ,struct evsel*,int *,int *) ;

__attribute__((used)) static int hists__resort_cb(struct hist_entry *he, void *arg)
{
 struct report *rep = arg;
 struct symbol *sym = he->ms.sym;

 if (rep->symbol_ipc && sym && !sym->annotate2) {
  struct evsel *evsel = hists_to_evsel(he->hists);

  symbol__annotate2(sym, he->ms.map, evsel,
      &annotation__default_options, ((void*)0));
 }

 return 0;
}
