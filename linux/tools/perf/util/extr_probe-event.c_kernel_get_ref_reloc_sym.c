
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_reloc_sym {int dummy; } ;
struct map {int dummy; } ;
struct kmap {struct ref_reloc_sym* ref_reloc_sym; } ;


 int host_machine ;
 struct map* machine__kernel_map (int ) ;
 struct kmap* map__kmap (struct map*) ;
 scalar_t__ map__load (struct map*) ;

__attribute__((used)) static struct ref_reloc_sym *kernel_get_ref_reloc_sym(void)
{

 struct kmap *kmap;
 struct map *map = machine__kernel_map(host_machine);

 if (map__load(map) < 0)
  return ((void*)0);

 kmap = map__kmap(map);
 if (!kmap)
  return ((void*)0);
 return kmap->ref_reloc_sym;
}
