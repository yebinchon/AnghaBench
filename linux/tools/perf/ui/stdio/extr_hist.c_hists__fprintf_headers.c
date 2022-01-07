
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_hpp {char* buf; int size; } ;
struct hists {int dummy; } ;
typedef int bf ;
struct TYPE_2__ {scalar_t__ report_hierarchy; } ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int hists__fprintf_hierarchy_headers (struct hists*,struct perf_hpp*,int *) ;
 int hists__fprintf_standard_headers (struct hists*,struct perf_hpp*,int *) ;
 TYPE_1__ symbol_conf ;

int hists__fprintf_headers(struct hists *hists, FILE *fp)
{
 char bf[1024];
 struct perf_hpp dummy_hpp = {
  .buf = bf,
  .size = sizeof(bf),
 };

 fprintf(fp, "# ");

 if (symbol_conf.report_hierarchy)
  return hists__fprintf_hierarchy_headers(hists, &dummy_hpp, fp);
 else
  return hists__fprintf_standard_headers(hists, &dummy_hpp, fp);

}
