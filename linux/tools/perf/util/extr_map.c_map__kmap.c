
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dummy; } ;
struct kmap {int dummy; } ;


 struct kmap* __map__kmap (struct map*) ;
 int pr_err (char*) ;

struct kmap *map__kmap(struct map *map)
{
 struct kmap *kmap = __map__kmap(map);

 if (!kmap)
  pr_err("Internal error: map__kmap with a non-kernel map\n");
 return kmap;
}
