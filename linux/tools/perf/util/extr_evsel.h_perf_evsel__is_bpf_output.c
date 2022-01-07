
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;


 int SOFTWARE ;
 int SW_BPF_OUTPUT ;
 int perf_evsel__match (struct evsel*,int ,int ) ;

__attribute__((used)) static inline bool perf_evsel__is_bpf_output(struct evsel *evsel)
{
 return perf_evsel__match(evsel, SOFTWARE, SW_BPF_OUTPUT);
}
