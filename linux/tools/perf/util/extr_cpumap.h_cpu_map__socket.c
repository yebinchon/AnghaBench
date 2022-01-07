
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int nr; int* map; } ;



__attribute__((used)) static inline int cpu_map__socket(struct perf_cpu_map *sock, int s)
{
 if (!sock || s > sock->nr || s < 0)
  return 0;
 return sock->map[s];
}
