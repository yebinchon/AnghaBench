
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_sort_key {int dummy; } ;
struct tracing_map {struct tracing_map_sort_key sort_key; } ;



__attribute__((used)) static void set_sort_key(struct tracing_map *map,
    struct tracing_map_sort_key *sort_key)
{
 map->sort_key = *sort_key;
}
