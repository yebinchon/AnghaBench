
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double period; } ;
struct hist_entry {TYPE_1__ stat; } ;


 int scnprintf (char*,size_t,char*,double,double) ;

__attribute__((used)) static int formula_ratio(struct hist_entry *he, struct hist_entry *pair,
    char *buf, size_t size)
{
 double old_period = he->stat.period;
 double new_period = pair->stat.period;

 return scnprintf(buf, size, "%.0F / %.0F", new_period, old_period);
}
