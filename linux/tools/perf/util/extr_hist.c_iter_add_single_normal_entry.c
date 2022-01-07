
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct hist_entry_iter {struct hist_entry* he; int parent; struct perf_sample* sample; struct evsel* evsel; } ;
struct hist_entry {int dummy; } ;
struct evsel {int dummy; } ;
struct addr_location {int dummy; } ;


 int ENOMEM ;
 int evsel__hists (struct evsel*) ;
 struct hist_entry* hists__add_entry (int ,struct addr_location*,int ,int *,int *,struct perf_sample*,int) ;

__attribute__((used)) static int
iter_add_single_normal_entry(struct hist_entry_iter *iter, struct addr_location *al)
{
 struct evsel *evsel = iter->evsel;
 struct perf_sample *sample = iter->sample;
 struct hist_entry *he;

 he = hists__add_entry(evsel__hists(evsel), al, iter->parent, ((void*)0), ((void*)0),
         sample, 1);
 if (he == ((void*)0))
  return -ENOMEM;

 iter->he = he;
 return 0;
}
