
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_stat {int dummy; } ;
struct perf_stat_output_ctx {int ctx; int (* print_metric ) (struct perf_stat_config*,int ,char const*,char*,char*,double) ;} ;
struct perf_stat_config {int dummy; } ;
struct evsel {int dummy; } ;


 char* PERF_COLOR_RED ;
 int STAT_APERF ;
 int STAT_CYCLES ;
 int STAT_SMI_NUM ;
 int evsel_context (struct evsel*) ;
 double runtime_stat_avg (struct runtime_stat*,int ,int,int) ;
 int stub1 (struct perf_stat_config*,int ,char const*,char*,char*,double) ;
 int stub2 (struct perf_stat_config*,int ,char const*,char*,char*,double) ;

__attribute__((used)) static void print_smi_cost(struct perf_stat_config *config,
      int cpu, struct evsel *evsel,
      struct perf_stat_output_ctx *out,
      struct runtime_stat *st)
{
 double smi_num, aperf, cycles, cost = 0.0;
 int ctx = evsel_context(evsel);
 const char *color = ((void*)0);

 smi_num = runtime_stat_avg(st, STAT_SMI_NUM, ctx, cpu);
 aperf = runtime_stat_avg(st, STAT_APERF, ctx, cpu);
 cycles = runtime_stat_avg(st, STAT_CYCLES, ctx, cpu);

 if ((cycles == 0) || (aperf == 0))
  return;

 if (smi_num)
  cost = (aperf - cycles) / aperf * 100.00;

 if (cost > 10)
  color = PERF_COLOR_RED;
 out->print_metric(config, out->ctx, color, "%8.1f%%", "SMI cycles%", cost);
 out->print_metric(config, out->ctx, ((void*)0), "%4.0f", "SMI#", smi_num);
}
