
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saved_value {int stats; } ;
struct runtime_stat {int dummy; } ;
typedef enum stat_type { ____Placeholder_stat_type } stat_type ;


 double avg_stats (int *) ;
 struct saved_value* saved_value_lookup (int *,int,int,int,int,struct runtime_stat*) ;

__attribute__((used)) static double runtime_stat_avg(struct runtime_stat *st,
          enum stat_type type, int ctx, int cpu)
{
 struct saved_value *v;

 v = saved_value_lookup(((void*)0), cpu, 0, type, ctx, st);
 if (!v)
  return 0.0;

 return avg_stats(&v->stats);
}
