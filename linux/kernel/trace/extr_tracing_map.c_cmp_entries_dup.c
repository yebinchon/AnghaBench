
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tracing_map_sort_entry {TYPE_2__* elt; int key; } ;
struct TYPE_4__ {TYPE_1__* map; } ;
struct TYPE_3__ {int key_size; } ;


 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static int cmp_entries_dup(const struct tracing_map_sort_entry **a,
      const struct tracing_map_sort_entry **b)
{
 int ret = 0;

 if (memcmp((*a)->key, (*b)->key, (*a)->elt->map->key_size))
  ret = 1;

 return ret;
}
