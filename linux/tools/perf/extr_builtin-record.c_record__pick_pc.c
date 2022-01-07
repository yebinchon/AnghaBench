
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record {int evlist; } ;
struct perf_event_mmap_page {int dummy; } ;


 struct perf_event_mmap_page* perf_evlist__pick_pc (int ) ;

__attribute__((used)) static const struct perf_event_mmap_page *record__pick_pc(struct record *rec)
{
 const struct perf_event_mmap_page *pc;

 pc = perf_evlist__pick_pc(rec->evlist);
 if (pc)
  return pc;
 return ((void*)0);
}
