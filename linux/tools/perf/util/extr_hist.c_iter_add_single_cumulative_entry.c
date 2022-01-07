
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct hists {int dummy; } ;
struct hist_entry_iter {int curr; struct hist_entry* he; int parent; struct hist_entry** priv; struct perf_sample* sample; struct evsel* evsel; } ;
struct hist_entry {int filtered; } ;
struct evsel {int dummy; } ;
struct addr_location {int dummy; } ;


 int ENOMEM ;
 int callchain_cursor ;
 int callchain_cursor_commit (int *) ;
 struct hists* evsel__hists (struct evsel*) ;
 int hist_entry__append_callchain (struct hist_entry*,struct perf_sample*) ;
 struct hist_entry* hists__add_entry (struct hists*,struct addr_location*,int ,int *,int *,struct perf_sample*,int) ;
 int hists__inc_nr_samples (struct hists*,int ) ;

__attribute__((used)) static int
iter_add_single_cumulative_entry(struct hist_entry_iter *iter,
     struct addr_location *al)
{
 struct evsel *evsel = iter->evsel;
 struct hists *hists = evsel__hists(evsel);
 struct perf_sample *sample = iter->sample;
 struct hist_entry **he_cache = iter->priv;
 struct hist_entry *he;
 int err = 0;

 he = hists__add_entry(hists, al, iter->parent, ((void*)0), ((void*)0),
         sample, 1);
 if (he == ((void*)0))
  return -ENOMEM;

 iter->he = he;
 he_cache[iter->curr++] = he;

 hist_entry__append_callchain(he, sample);





 callchain_cursor_commit(&callchain_cursor);

 hists__inc_nr_samples(hists, he->filtered);

 return err;
}
