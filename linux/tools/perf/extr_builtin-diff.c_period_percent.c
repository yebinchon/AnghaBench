
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double u64 ;
struct hist_entry {int hists; } ;


 double hists__total_period (int ) ;

__attribute__((used)) static double period_percent(struct hist_entry *he, u64 period)
{
 u64 total = hists__total_period(he->hists);

 return (period * 100.0) / total;
}
