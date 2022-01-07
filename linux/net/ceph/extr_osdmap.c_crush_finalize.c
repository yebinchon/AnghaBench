
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crush_work_bucket {int dummy; } ;
struct crush_work {int dummy; } ;
struct crush_map {int working_size; int max_buckets; TYPE_1__** buckets; } ;
typedef int __u32 ;
typedef size_t __s32 ;
struct TYPE_2__ {int alg; int size; } ;



__attribute__((used)) static void crush_finalize(struct crush_map *c)
{
 __s32 b;


 c->working_size = sizeof(struct crush_work) +
     c->max_buckets * sizeof(struct crush_work_bucket *);

 for (b = 0; b < c->max_buckets; b++) {
  if (!c->buckets[b])
   continue;

  switch (c->buckets[b]->alg) {
  default:




   c->working_size += sizeof(struct crush_work_bucket);
   break;
  }

  c->working_size += c->buckets[b]->size * sizeof(__u32);
 }
}
