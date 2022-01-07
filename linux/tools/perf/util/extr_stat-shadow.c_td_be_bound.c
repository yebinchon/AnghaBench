
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_stat {int dummy; } ;


 double sanitize_val (double) ;
 double td_bad_spec (int,int,struct runtime_stat*) ;
 double td_fe_bound (int,int,struct runtime_stat*) ;
 double td_retiring (int,int,struct runtime_stat*) ;

__attribute__((used)) static double td_be_bound(int ctx, int cpu, struct runtime_stat *st)
{
 double sum = (td_fe_bound(ctx, cpu, st) +
        td_bad_spec(ctx, cpu, st) +
        td_retiring(ctx, cpu, st));
 if (sum == 0)
  return 0;
 return sanitize_val(1.0 - sum);
}
