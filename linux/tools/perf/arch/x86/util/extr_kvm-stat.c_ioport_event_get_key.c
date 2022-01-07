
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct evsel {int dummy; } ;
struct event_key {void* info; void* key; } ;


 void* perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;

__attribute__((used)) static void ioport_event_get_key(struct evsel *evsel,
     struct perf_sample *sample,
     struct event_key *key)
{
 key->key = perf_evsel__intval(evsel, sample, "port");
 key->info = perf_evsel__intval(evsel, sample, "rw");
}
