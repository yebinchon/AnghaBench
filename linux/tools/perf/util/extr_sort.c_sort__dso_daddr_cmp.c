
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct map {int dummy; } ;
struct hist_entry {TYPE_2__* mem_info; } ;
typedef int int64_t ;
struct TYPE_3__ {struct map* map; } ;
struct TYPE_4__ {TYPE_1__ daddr; } ;


 int _sort__dso_cmp (struct map*,struct map*) ;

__attribute__((used)) static int64_t
sort__dso_daddr_cmp(struct hist_entry *left, struct hist_entry *right)
{
 struct map *map_l = ((void*)0);
 struct map *map_r = ((void*)0);

 if (left->mem_info)
  map_l = left->mem_info->daddr.map;
 if (right->mem_info)
  map_r = right->mem_info->daddr.map;

 return _sort__dso_cmp(map_l, map_r);
}
