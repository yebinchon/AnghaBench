
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct perf_hpp {char* buf; size_t size; } ;
struct TYPE_3__ {int total_period; } ;
struct hists {TYPE_1__ stats; } ;
struct hist_entry {struct hists* hists; } ;
struct TYPE_4__ {scalar_t__ report_block; scalar_t__ report_hierarchy; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int hist_entry__block_fprintf (struct hist_entry*,char*,size_t,int *) ;
 scalar_t__ hist_entry__has_callchains (struct hist_entry*) ;
 int hist_entry__hierarchy_fprintf (struct hist_entry*,struct perf_hpp*,struct hists*,int *) ;
 int hist_entry__snprintf (struct hist_entry*,struct perf_hpp*) ;
 int hist_entry_callchain__fprintf (struct hist_entry*,int ,int ,int *) ;
 TYPE_2__ symbol_conf ;

__attribute__((used)) static int hist_entry__fprintf(struct hist_entry *he, size_t size,
          char *bf, size_t bfsz, FILE *fp,
          bool ignore_callchains)
{
 int ret;
 int callchain_ret = 0;
 struct perf_hpp hpp = {
  .buf = bf,
  .size = size,
 };
 struct hists *hists = he->hists;
 u64 total_period = hists->stats.total_period;

 if (size == 0 || size > bfsz)
  size = hpp.size = bfsz;

 if (symbol_conf.report_hierarchy)
  return hist_entry__hierarchy_fprintf(he, &hpp, hists, fp);

 if (symbol_conf.report_block)
  return hist_entry__block_fprintf(he, bf, size, fp);

 hist_entry__snprintf(he, &hpp);

 ret = fprintf(fp, "%s\n", bf);

 if (hist_entry__has_callchains(he) && !ignore_callchains)
  callchain_ret = hist_entry_callchain__fprintf(he, total_period,
             0, fp);

 ret += callchain_ret;

 return ret;
}
