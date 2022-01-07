
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_read_values {int dummy; } ;
typedef int FILE ;


 int perf_read_values__display_pretty (int *,struct perf_read_values*) ;
 int perf_read_values__display_raw (int *,struct perf_read_values*) ;

void perf_read_values_display(FILE *fp, struct perf_read_values *values, int raw)
{
 if (raw)
  perf_read_values__display_raw(fp, values);
 else
  perf_read_values__display_pretty(fp, values);
}
