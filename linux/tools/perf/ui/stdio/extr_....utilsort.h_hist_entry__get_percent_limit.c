
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef double u64 ;
struct TYPE_4__ {double period; } ;
struct hist_entry {TYPE_2__* stat_acc; int hists; TYPE_1__ stat; } ;
struct TYPE_6__ {scalar_t__ cumulate_callchain; } ;
struct TYPE_5__ {double period; } ;


 double hists__total_period (int ) ;
 TYPE_3__ symbol_conf ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline float hist_entry__get_percent_limit(struct hist_entry *he)
{
 u64 period = he->stat.period;
 u64 total_period = hists__total_period(he->hists);

 if (unlikely(total_period == 0))
  return 0;

 if (symbol_conf.cumulate_callchain)
  period = he->stat_acc->period;

 return period * 100.0 / total_period;
}
