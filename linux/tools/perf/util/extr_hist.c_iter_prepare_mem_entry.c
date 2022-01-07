
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct mem_info {int dummy; } ;
struct hist_entry_iter {struct mem_info* priv; struct perf_sample* sample; } ;
struct addr_location {int dummy; } ;


 int ENOMEM ;
 struct mem_info* sample__resolve_mem (struct perf_sample*,struct addr_location*) ;

__attribute__((used)) static int
iter_prepare_mem_entry(struct hist_entry_iter *iter, struct addr_location *al)
{
 struct perf_sample *sample = iter->sample;
 struct mem_info *mi;

 mi = sample__resolve_mem(sample, al);
 if (mi == ((void*)0))
  return -ENOMEM;

 iter->priv = mi;
 return 0;
}
