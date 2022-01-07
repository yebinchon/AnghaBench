
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat_config {scalar_t__ aggr_mode; } ;
struct outstate {int fh; int nr; int id; int evsel; int prefix; } ;


 scalar_t__ AGGR_NONE ;
 int aggr_printout (struct perf_stat_config*,int ,int ,int ) ;
 int fprintf (int ,char*) ;
 int fputc (char,int ) ;
 int fputs (int ,int ) ;

__attribute__((used)) static void do_new_line_std(struct perf_stat_config *config,
       struct outstate *os)
{
 fputc('\n', os->fh);
 fputs(os->prefix, os->fh);
 aggr_printout(config, os->evsel, os->id, os->nr);
 if (config->aggr_mode == AGGR_NONE)
  fprintf(os->fh, "        ");
 fprintf(os->fh, "                                                 ");
}
