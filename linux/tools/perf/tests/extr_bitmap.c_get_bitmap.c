
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int nr; int * map; } ;


 unsigned long* bitmap_alloc (int) ;
 struct perf_cpu_map* perf_cpu_map__new (char const*) ;
 int perf_cpu_map__put (struct perf_cpu_map*) ;
 int set_bit (int ,unsigned long*) ;

__attribute__((used)) static unsigned long *get_bitmap(const char *str, int nbits)
{
 struct perf_cpu_map *map = perf_cpu_map__new(str);
 unsigned long *bm = ((void*)0);
 int i;

 bm = bitmap_alloc(nbits);

 if (map && bm) {
  for (i = 0; i < map->nr; i++)
   set_bit(map->map[i], bm);
 }

 if (map)
  perf_cpu_map__put(map);
 return bm;
}
