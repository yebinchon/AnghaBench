
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct saved_value {int stats; } ;
struct runtime_stat {int dummy; } ;
typedef enum stat_type { ____Placeholder_stat_type } stat_type ;


 struct saved_value* saved_value_lookup (int *,int,int,int,int,struct runtime_stat*) ;
 int update_stats (int *,int ) ;

__attribute__((used)) static void update_runtime_stat(struct runtime_stat *st,
    enum stat_type type,
    int ctx, int cpu, u64 count)
{
 struct saved_value *v = saved_value_lookup(((void*)0), cpu, 1,
         type, ctx, st);

 if (v)
  update_stats(&v->stats, count);
}
