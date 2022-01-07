
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_stat {int dummy; } ;
struct perf_stat_output_ctx {int ctx; int (* print_metric ) (struct perf_stat_config*,int ,char const*,char*,char*,double) ;} ;
struct perf_stat_config {int dummy; } ;
struct evsel {int dummy; } ;


 int GRC_STALLED_CYCLES_FE ;
 int STAT_CYCLES ;
 int evsel_context (struct evsel*) ;
 char* get_ratio_color (int ,double) ;
 double runtime_stat_avg (struct runtime_stat*,int ,int,int) ;
 int stub1 (struct perf_stat_config*,int ,char const*,char*,char*,double) ;
 int stub2 (struct perf_stat_config*,int ,char const*,char*,char*,double) ;

__attribute__((used)) static void print_stalled_cycles_frontend(struct perf_stat_config *config,
       int cpu,
       struct evsel *evsel, double avg,
       struct perf_stat_output_ctx *out,
       struct runtime_stat *st)
{
 double total, ratio = 0.0;
 const char *color;
 int ctx = evsel_context(evsel);

 total = runtime_stat_avg(st, STAT_CYCLES, ctx, cpu);

 if (total)
  ratio = avg / total * 100.0;

 color = get_ratio_color(GRC_STALLED_CYCLES_FE, ratio);

 if (ratio)
  out->print_metric(config, out->ctx, color, "%7.2f%%", "frontend cycles idle",
      ratio);
 else
  out->print_metric(config, out->ctx, ((void*)0), ((void*)0), "frontend cycles idle", 0);
}
