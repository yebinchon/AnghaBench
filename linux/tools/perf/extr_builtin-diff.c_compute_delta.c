
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {double period_ratio_delta; int computed; } ;
struct TYPE_3__ {int period; } ;
struct hist_entry {TYPE_2__ diff; TYPE_1__ stat; } ;


 double period_percent (struct hist_entry*,int ) ;

__attribute__((used)) static double compute_delta(struct hist_entry *he, struct hist_entry *pair)
{
 double old_percent = period_percent(he, he->stat.period);
 double new_percent = period_percent(pair, pair->stat.period);

 pair->diff.period_ratio_delta = new_percent - old_percent;
 pair->diff.computed = 1;
 return pair->diff.period_ratio_delta;
}
