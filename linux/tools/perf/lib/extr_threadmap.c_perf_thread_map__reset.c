
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int err_thread; int * map; } ;


 int memset (int *,int ,size_t) ;

__attribute__((used)) static void perf_thread_map__reset(struct perf_thread_map *map, int start, int nr)
{
 size_t size = (nr - start) * sizeof(map->map[0]);

 memset(&map->map[start], 0, size);
 map->err_thread = -1;
}
