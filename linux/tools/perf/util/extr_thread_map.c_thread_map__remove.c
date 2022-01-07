
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_thread_map {int nr; TYPE_1__* map; } ;
struct TYPE_2__ {int comm; } ;


 int EINVAL ;
 int zfree (int *) ;

int thread_map__remove(struct perf_thread_map *threads, int idx)
{
 int i;

 if (threads->nr < 1)
  return -EINVAL;

 if (idx >= threads->nr)
  return -EINVAL;




 zfree(&threads->map[idx].comm);

 for (i = idx; i < threads->nr - 1; i++)
  threads->map[i] = threads->map[i + 1];

 threads->nr--;
 return 0;
}
