
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct symbol {int dummy; } ;
struct perf_sample {int dummy; } ;
struct map {int dummy; } ;
struct evsel {int idx; TYPE_2__* evlist; } ;
struct annotated_source {int dummy; } ;
struct TYPE_3__ {int nr_entries; } ;
struct TYPE_4__ {TYPE_1__ core; } ;


 int __symbol__inc_addr_samples (struct symbol*,struct map*,struct annotated_source*,int ,int ,struct perf_sample*) ;
 struct annotated_source* symbol__hists (struct symbol*,int ) ;

__attribute__((used)) static int symbol__inc_addr_samples(struct symbol *sym, struct map *map,
        struct evsel *evsel, u64 addr,
        struct perf_sample *sample)
{
 struct annotated_source *src;

 if (sym == ((void*)0))
  return 0;
 src = symbol__hists(sym, evsel->evlist->core.nr_entries);
 return (src) ? __symbol__inc_addr_samples(sym, map, src, evsel->idx,
         addr, sample) : 0;
}
