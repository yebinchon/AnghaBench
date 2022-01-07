
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_stat {int dummy; } ;


 int reset_stat (struct runtime_stat*) ;

void perf_stat__reset_shadow_per_stat(struct runtime_stat *st)
{
 reset_stat(st);
}
