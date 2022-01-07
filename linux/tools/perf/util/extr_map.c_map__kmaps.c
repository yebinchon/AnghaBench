
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int dummy; } ;
struct map {int dummy; } ;
struct kmap {struct map_groups* kmaps; } ;


 struct kmap* map__kmap (struct map*) ;
 int pr_err (char*) ;

struct map_groups *map__kmaps(struct map *map)
{
 struct kmap *kmap = map__kmap(map);

 if (!kmap || !kmap->kmaps) {
  pr_err("Internal error: map__kmaps with a non-kernel map\n");
  return ((void*)0);
 }
 return kmap->kmaps;
}
