
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ref_reloc_sym {int addr; int * name; } ;
struct map {int dummy; } ;
struct kmap {struct ref_reloc_sym* ref_reloc_sym; } ;


 int ENOMEM ;
 int free (struct ref_reloc_sym*) ;
 struct kmap* map__kmap (struct map*) ;
 char* strchr (int *,char) ;
 int * strdup (char const*) ;
 struct ref_reloc_sym* zalloc (int) ;

int map__set_kallsyms_ref_reloc_sym(struct map *map, const char *symbol_name, u64 addr)
{
 char *bracket;
 struct ref_reloc_sym *ref;
 struct kmap *kmap;

 ref = zalloc(sizeof(struct ref_reloc_sym));
 if (ref == ((void*)0))
  return -ENOMEM;

 ref->name = strdup(symbol_name);
 if (ref->name == ((void*)0)) {
  free(ref);
  return -ENOMEM;
 }

 bracket = strchr(ref->name, ']');
 if (bracket)
  *bracket = '\0';

 ref->addr = addr;

 kmap = map__kmap(map);
 if (kmap)
  kmap->ref_reloc_sym = ref;

 return 0;
}
