
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_data {int dummy; } ;
struct pkg_data {int dummy; } ;
struct core_data {int dummy; } ;
struct TYPE_2__ {int packages; int cores; int threads; } ;


 TYPE_1__ average ;
 int for_all_cpus (int (*) (int *,int *,int *),struct thread_data*,struct core_data*,struct pkg_data*) ;
 int format_counters (int *,int *,int *) ;
 int print_header (char*) ;
 scalar_t__ summary_only ;

void format_all_counters(struct thread_data *t, struct core_data *c, struct pkg_data *p)
{
 static int printed;

 if (!printed || !summary_only)
  print_header("\t");

 format_counters(&average.threads, &average.cores, &average.packages);

 printed = 1;

 if (summary_only)
  return;

 for_all_cpus(format_counters, t, c, p);
}
