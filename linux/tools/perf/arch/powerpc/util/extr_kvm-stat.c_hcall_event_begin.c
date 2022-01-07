
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct evsel {int name; } ;
struct event_key {int dummy; } ;


 int hcall_event_get_key (struct evsel*,struct perf_sample*,struct event_key*) ;
 int * kvm_events_tp ;
 int strcmp (int ,int ) ;

__attribute__((used)) static bool hcall_event_begin(struct evsel *evsel,
         struct perf_sample *sample, struct event_key *key)
{
 if (!strcmp(evsel->name, kvm_events_tp[2])) {
  hcall_event_get_key(evsel, sample, key);
  return 1;
 }

 return 0;
}
