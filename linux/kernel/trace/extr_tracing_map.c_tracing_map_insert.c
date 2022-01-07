
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_elt {int dummy; } ;
struct tracing_map {int dummy; } ;


 struct tracing_map_elt* __tracing_map_insert (struct tracing_map*,void*,int) ;

struct tracing_map_elt *tracing_map_insert(struct tracing_map *map, void *key)
{
 return __tracing_map_insert(map, key, 0);
}
