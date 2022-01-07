
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int computed; int wdiff; } ;
struct TYPE_3__ {int period; } ;
struct hist_entry {TYPE_2__ diff; TYPE_1__ stat; } ;
typedef int s64 ;


 int compute_wdiff_w1 ;
 int compute_wdiff_w2 ;

__attribute__((used)) static s64 compute_wdiff(struct hist_entry *he, struct hist_entry *pair)
{
 u64 old_period = he->stat.period;
 u64 new_period = pair->stat.period;

 pair->diff.computed = 1;
 pair->diff.wdiff = new_period * compute_wdiff_w2 -
      old_period * compute_wdiff_w1;

 return pair->diff.wdiff;
}
