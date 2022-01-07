
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double n; } ;
struct saved_value {TYPE_1__ stats; } ;
struct runtime_stat {int dummy; } ;
typedef enum stat_type { ____Placeholder_stat_type } stat_type ;


 struct saved_value* saved_value_lookup (int *,int,int,int,int,struct runtime_stat*) ;

__attribute__((used)) static double runtime_stat_n(struct runtime_stat *st,
        enum stat_type type, int ctx, int cpu)
{
 struct saved_value *v;

 v = saved_value_lookup(((void*)0), cpu, 0, type, ctx, st);
 if (!v)
  return 0.0;

 return v->stats.n;
}
