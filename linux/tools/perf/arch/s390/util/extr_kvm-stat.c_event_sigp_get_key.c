
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct evsel {int dummy; } ;
struct event_key {int exit_reasons; int key; } ;


 int perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 int sie_sigp_order_codes ;

__attribute__((used)) static void event_sigp_get_key(struct evsel *evsel,
          struct perf_sample *sample,
          struct event_key *key)
{
 key->key = perf_evsel__intval(evsel, sample, "order_code");
 key->exit_reasons = sie_sigp_order_codes;
}
