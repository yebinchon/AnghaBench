
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map {int dummy; } ;


 int tracing_map_add_field (struct tracing_map*,int ) ;
 int tracing_map_cmp_atomic64 ;

int tracing_map_add_sum_field(struct tracing_map *map)
{
 return tracing_map_add_field(map, tracing_map_cmp_atomic64);
}
