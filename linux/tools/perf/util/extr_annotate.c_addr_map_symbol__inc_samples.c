
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct evsel {int dummy; } ;
struct addr_map_symbol {int al_addr; int map; int sym; } ;


 int symbol__inc_addr_samples (int ,int ,struct evsel*,int ,struct perf_sample*) ;

int addr_map_symbol__inc_samples(struct addr_map_symbol *ams, struct perf_sample *sample,
     struct evsel *evsel)
{
 return symbol__inc_addr_samples(ams->sym, ams->map, evsel, ams->al_addr, sample);
}
