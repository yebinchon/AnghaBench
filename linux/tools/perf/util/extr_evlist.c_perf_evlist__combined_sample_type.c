
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct evlist {scalar_t__ combined_sample_type; } ;


 int __perf_evlist__combined_sample_type (struct evlist*) ;

u64 perf_evlist__combined_sample_type(struct evlist *evlist)
{
 evlist->combined_sample_type = 0;
 return __perf_evlist__combined_sample_type(evlist);
}
