
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct thread {int dummy; } ;
struct perf_sample {int flags; int ip; int addr; } ;
struct perf_event_attr {int dummy; } ;
struct TYPE_3__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;
struct addr_location {TYPE_2__* sym; } ;
struct TYPE_4__ {char* name; } ;


 int PERF_IP_FLAG_CALL ;
 int PERF_IP_FLAG_RETURN ;
 int PERF_IP_FLAG_TRACE_BEGIN ;
 int PERF_IP_FLAG_TRACE_END ;
 scalar_t__ sample_addr_correlates_sym (struct perf_event_attr*) ;
 int thread__resolve (struct thread*,struct addr_location*,struct perf_sample*) ;

__attribute__((used)) static const char *resolve_branch_sym(struct perf_sample *sample,
          struct evsel *evsel,
          struct thread *thread,
          struct addr_location *al,
          u64 *ip)
{
 struct addr_location addr_al;
 struct perf_event_attr *attr = &evsel->core.attr;
 const char *name = ((void*)0);

 if (sample->flags & (PERF_IP_FLAG_CALL | PERF_IP_FLAG_TRACE_BEGIN)) {
  if (sample_addr_correlates_sym(attr)) {
   thread__resolve(thread, &addr_al, sample);
   if (addr_al.sym)
    name = addr_al.sym->name;
   else
    *ip = sample->addr;
  } else {
   *ip = sample->addr;
  }
 } else if (sample->flags & (PERF_IP_FLAG_RETURN | PERF_IP_FLAG_TRACE_END)) {
  if (al->sym)
   name = al->sym->name;
  else
   *ip = sample->ip;
 }
 return name;
}
