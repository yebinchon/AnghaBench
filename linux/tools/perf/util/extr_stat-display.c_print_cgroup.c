
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_stat_config {char* csv_sep; int output; } ;
struct evsel {TYPE_1__* cgrp; } ;
struct TYPE_2__ {char* name; } ;


 int fprintf (int ,char*,char*,char const*) ;
 scalar_t__ nr_cgroups ;

__attribute__((used)) static void print_cgroup(struct perf_stat_config *config, struct evsel *evsel)
{
 if (nr_cgroups) {
  const char *cgrp_name = evsel->cgrp ? evsel->cgrp->name : "";
  fprintf(config->output, "%s%s", config->csv_sep, cgrp_name);
 }
}
