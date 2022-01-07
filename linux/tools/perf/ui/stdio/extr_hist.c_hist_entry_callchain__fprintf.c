
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int period; } ;
struct hist_entry {int sorted_chain; TYPE_2__* stat_acc; TYPE_1__ stat; } ;
struct TYPE_8__ {int mode; } ;
struct TYPE_7__ {scalar_t__ cumulate_callchain; } ;
struct TYPE_6__ {int period; } ;
typedef int FILE ;







 size_t callchain__fprintf_flat (int *,int *,int ) ;
 size_t callchain__fprintf_folded (int *,int *,int ) ;
 size_t callchain__fprintf_graph (int *,int *,int ,int ,int) ;
 TYPE_4__ callchain_param ;
 int pr_err (char*) ;
 TYPE_3__ symbol_conf ;

__attribute__((used)) static size_t hist_entry_callchain__fprintf(struct hist_entry *he,
         u64 total_samples, int left_margin,
         FILE *fp)
{
 u64 parent_samples = he->stat.period;

 if (symbol_conf.cumulate_callchain)
  parent_samples = he->stat_acc->period;

 switch (callchain_param.mode) {
 case 129:
  return callchain__fprintf_graph(fp, &he->sorted_chain, total_samples,
      parent_samples, left_margin);
  break;
 case 130:
  return callchain__fprintf_graph(fp, &he->sorted_chain, total_samples,
      parent_samples, left_margin);
  break;
 case 132:
  return callchain__fprintf_flat(fp, &he->sorted_chain, total_samples);
  break;
 case 131:
  return callchain__fprintf_folded(fp, &he->sorted_chain, total_samples);
  break;
 case 128:
  break;
 default:
  pr_err("Bad callchain mode\n");
 }

 return 0;
}
