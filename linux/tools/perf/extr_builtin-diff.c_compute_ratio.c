
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int computed; double period_ratio; } ;
struct TYPE_3__ {double period; } ;
struct hist_entry {TYPE_2__ diff; TYPE_1__ stat; } ;



__attribute__((used)) static double compute_ratio(struct hist_entry *he, struct hist_entry *pair)
{
 double old_period = he->stat.period ?: 1;
 double new_period = pair->stat.period;

 pair->diff.computed = 1;
 pair->diff.period_ratio = new_period / old_period;
 return pair->diff.period_ratio;
}
