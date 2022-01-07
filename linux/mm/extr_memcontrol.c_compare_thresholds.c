
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_threshold {scalar_t__ threshold; } ;



__attribute__((used)) static int compare_thresholds(const void *a, const void *b)
{
 const struct mem_cgroup_threshold *_a = a;
 const struct mem_cgroup_threshold *_b = b;

 if (_a->threshold > _b->threshold)
  return 1;

 if (_a->threshold < _b->threshold)
  return -1;

 return 0;
}
