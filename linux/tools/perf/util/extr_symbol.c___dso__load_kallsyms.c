
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct map {int dummy; } ;
struct kmap {int kmaps; } ;
struct dso {scalar_t__ kernel; int symtab_type; int symbols; } ;


 int DSO_BINARY_TYPE__GUEST_KALLSYMS ;
 int DSO_BINARY_TYPE__KALLSYMS ;
 scalar_t__ DSO_TYPE_GUEST_KERNEL ;
 scalar_t__ dso__load_all_kallsyms (struct dso*,char const*) ;
 int dso__load_kcore (struct dso*,struct map*,char const*) ;
 scalar_t__ kallsyms__delta (struct kmap*,char const*,int *) ;
 struct kmap* map__kmap (struct map*) ;
 int map_groups__split_kallsyms (int ,struct dso*,int ,struct map*) ;
 int map_groups__split_kallsyms_for_kcore (int ,struct dso*) ;
 scalar_t__ symbol__restricted_filename (char const*,char*) ;
 int symbols__fixup_duplicate (int *) ;
 int symbols__fixup_end (int *) ;

int __dso__load_kallsyms(struct dso *dso, const char *filename,
    struct map *map, bool no_kcore)
{
 struct kmap *kmap = map__kmap(map);
 u64 delta = 0;

 if (symbol__restricted_filename(filename, "/proc/kallsyms"))
  return -1;

 if (!kmap || !kmap->kmaps)
  return -1;

 if (dso__load_all_kallsyms(dso, filename) < 0)
  return -1;

 if (kallsyms__delta(kmap, filename, &delta))
  return -1;

 symbols__fixup_end(&dso->symbols);
 symbols__fixup_duplicate(&dso->symbols);

 if (dso->kernel == DSO_TYPE_GUEST_KERNEL)
  dso->symtab_type = DSO_BINARY_TYPE__GUEST_KALLSYMS;
 else
  dso->symtab_type = DSO_BINARY_TYPE__KALLSYMS;

 if (!no_kcore && !dso__load_kcore(dso, map, filename))
  return map_groups__split_kallsyms_for_kcore(kmap->kmaps, dso);
 else
  return map_groups__split_kallsyms(kmap->kmaps, dso, delta, map);
}
