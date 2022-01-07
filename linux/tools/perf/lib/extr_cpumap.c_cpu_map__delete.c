
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int refcnt; } ;


 int WARN_ONCE (int,char*) ;
 int free (struct perf_cpu_map*) ;
 scalar_t__ refcount_read (int *) ;

__attribute__((used)) static void cpu_map__delete(struct perf_cpu_map *map)
{
 if (map) {
  WARN_ONCE(refcount_read(&map->refcnt) != 0,
     "cpu_map refcnt unbalanced\n");
  free(map);
 }
}
