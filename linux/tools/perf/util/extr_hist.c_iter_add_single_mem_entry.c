
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_sample {int weight; int period; } ;
struct mem_info {int dummy; } ;
struct hists {int dummy; } ;
struct hist_entry_iter {struct hist_entry* he; int parent; struct perf_sample* sample; int evsel; struct mem_info* priv; } ;
struct hist_entry {int dummy; } ;
struct addr_location {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct hists* evsel__hists (int ) ;
 struct hist_entry* hists__add_entry (struct hists*,struct addr_location*,int ,int *,struct mem_info*,struct perf_sample*,int) ;

__attribute__((used)) static int
iter_add_single_mem_entry(struct hist_entry_iter *iter, struct addr_location *al)
{
 u64 cost;
 struct mem_info *mi = iter->priv;
 struct hists *hists = evsel__hists(iter->evsel);
 struct perf_sample *sample = iter->sample;
 struct hist_entry *he;

 if (mi == ((void*)0))
  return -EINVAL;

 cost = sample->weight;
 if (!cost)
  cost = 1;
 sample->period = cost;

 he = hists__add_entry(hists, al, iter->parent, ((void*)0), mi,
         sample, 1);
 if (!he)
  return -ENOMEM;

 iter->he = he;
 return 0;
}
