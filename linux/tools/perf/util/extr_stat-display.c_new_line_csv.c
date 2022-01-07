
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat_config {int csv_sep; } ;
struct outstate {char* prefix; int nfields; int fh; int nr; int id; int evsel; } ;


 int aggr_printout (struct perf_stat_config*,int ,int ,int ) ;
 int fprintf (int ,char*,char*,int ) ;
 int fputc (char,int ) ;
 int fputs (int ,int ) ;

__attribute__((used)) static void new_line_csv(struct perf_stat_config *config, void *ctx)
{
 struct outstate *os = ctx;
 int i;

 fputc('\n', os->fh);
 if (os->prefix)
  fprintf(os->fh, "%s%s", os->prefix, config->csv_sep);
 aggr_printout(config, os->evsel, os->id, os->nr);
 for (i = 0; i < os->nfields; i++)
  fputs(config->csv_sep, os->fh);
}
