
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crush_work_bucket {int dummy; } ;
struct crush_work {TYPE_1__** work; } ;
struct crush_map {int max_buckets; int working_size; TYPE_2__** buckets; } ;
typedef int __u32 ;
typedef size_t __s32 ;
struct TYPE_4__ {int alg; int size; } ;
struct TYPE_3__ {void* perm; scalar_t__ perm_n; scalar_t__ perm_x; } ;


 int BUG_ON (int) ;

void crush_init_workspace(const struct crush_map *map, void *v)
{
 struct crush_work *w = v;
 __s32 b;
 v += sizeof(struct crush_work);
 w->work = v;
 v += map->max_buckets * sizeof(struct crush_work_bucket *);
 for (b = 0; b < map->max_buckets; ++b) {
  if (!map->buckets[b])
   continue;

  w->work[b] = v;
  switch (map->buckets[b]->alg) {
  default:
   v += sizeof(struct crush_work_bucket);
   break;
  }
  w->work[b]->perm_x = 0;
  w->work[b]->perm_n = 0;
  w->work[b]->perm = v;
  v += map->buckets[b]->size * sizeof(__u32);
 }
 BUG_ON(v - (void *)w != map->working_size);
}
