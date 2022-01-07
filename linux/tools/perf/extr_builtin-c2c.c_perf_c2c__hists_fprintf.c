
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_session {int dummy; } ;
struct TYPE_3__ {int hists; } ;
struct TYPE_4__ {TYPE_1__ hists; scalar_t__ stats_only; } ;
typedef int FILE ;


 TYPE_2__ c2c ;
 int fprintf (int *,char*) ;
 int hists__fprintf (int *,int,int ,int ,int ,int ,int) ;
 int print_c2c__display_stats (int *) ;
 int print_c2c_info (int *,struct perf_session*) ;
 int print_pareto (int *) ;
 int print_shared_cacheline_info (int *) ;
 int setup_pager () ;
 int stdout ;

__attribute__((used)) static void perf_c2c__hists_fprintf(FILE *out, struct perf_session *session)
{
 setup_pager();

 print_c2c__display_stats(out);
 fprintf(out, "\n");
 print_shared_cacheline_info(out);
 fprintf(out, "\n");
 print_c2c_info(out, session);

 if (c2c.stats_only)
  return;

 fprintf(out, "\n");
 fprintf(out, "=================================================\n");
 fprintf(out, "           Shared Data Cache Line Table          \n");
 fprintf(out, "=================================================\n");
 fprintf(out, "#\n");

 hists__fprintf(&c2c.hists.hists, 1, 0, 0, 0, stdout, 1);

 fprintf(out, "\n");
 fprintf(out, "=================================================\n");
 fprintf(out, "      Shared Cache Line Distribution Pareto      \n");
 fprintf(out, "=================================================\n");
 fprintf(out, "#\n");

 print_pareto(out);
}
