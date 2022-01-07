
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef double u64 ;
struct TYPE_2__ {double period; } ;
struct hist_entry {TYPE_1__ stat; int hists; } ;


 double hists__total_period (int ) ;

__attribute__((used)) static double baseline_percent(struct hist_entry *he)
{
 u64 total = hists__total_period(he->hists);

 return 100.0 * he->stat.period / total;
}
