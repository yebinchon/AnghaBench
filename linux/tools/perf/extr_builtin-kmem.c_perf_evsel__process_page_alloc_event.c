
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct perf_sample {int dummy; } ;
struct page_stat {unsigned int order; unsigned int gfp_flags; unsigned int migrate_type; int alloc_bytes; int nr_alloc; void* callsite; void* page; } ;
struct evsel {int dummy; } ;


 int ENOMEM ;
 void* find_callsite (struct evsel*,struct perf_sample*) ;
 unsigned int kmem_page_size ;
 int live_page ;
 int nr_page_allocs ;
 int nr_page_fails ;
 int ** order_stats ;
 struct page_stat* page_stat__findnew_alloc (struct page_stat*) ;
 struct page_stat* page_stat__findnew_caller (struct page_stat*) ;
 struct page_stat* page_stat__findnew_page (struct page_stat*) ;
 scalar_t__ parse_gfp_flags (struct evsel*,struct perf_sample*,unsigned int) ;
 void* perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 int total_page_alloc_bytes ;
 int total_page_fail_bytes ;
 scalar_t__ use_pfn ;
 int valid_page (void*) ;

__attribute__((used)) static int perf_evsel__process_page_alloc_event(struct evsel *evsel,
      struct perf_sample *sample)
{
 u64 page;
 unsigned int order = perf_evsel__intval(evsel, sample, "order");
 unsigned int gfp_flags = perf_evsel__intval(evsel, sample, "gfp_flags");
 unsigned int migrate_type = perf_evsel__intval(evsel, sample,
             "migratetype");
 u64 bytes = kmem_page_size << order;
 u64 callsite;
 struct page_stat *pstat;
 struct page_stat this = {
  .order = order,
  .gfp_flags = gfp_flags,
  .migrate_type = migrate_type,
 };

 if (use_pfn)
  page = perf_evsel__intval(evsel, sample, "pfn");
 else
  page = perf_evsel__intval(evsel, sample, "page");

 nr_page_allocs++;
 total_page_alloc_bytes += bytes;

 if (!valid_page(page)) {
  nr_page_fails++;
  total_page_fail_bytes += bytes;

  return 0;
 }

 if (parse_gfp_flags(evsel, sample, gfp_flags) < 0)
  return -1;

 callsite = find_callsite(evsel, sample);





 this.page = page;
 pstat = page_stat__findnew_page(&this);
 if (pstat == ((void*)0))
  return -ENOMEM;

 pstat->nr_alloc++;
 pstat->alloc_bytes += bytes;
 pstat->callsite = callsite;

 if (!live_page) {
  pstat = page_stat__findnew_alloc(&this);
  if (pstat == ((void*)0))
   return -ENOMEM;

  pstat->nr_alloc++;
  pstat->alloc_bytes += bytes;
  pstat->callsite = callsite;
 }

 this.callsite = callsite;
 pstat = page_stat__findnew_caller(&this);
 if (pstat == ((void*)0))
  return -ENOMEM;

 pstat->nr_alloc++;
 pstat->alloc_bytes += bytes;

 order_stats[order][migrate_type]++;

 return 0;
}
