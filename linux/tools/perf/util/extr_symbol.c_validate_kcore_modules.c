
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int dummy; } ;
struct map {int dummy; } ;


 int EINVAL ;
 int PATH_MAX ;
 scalar_t__ do_validate_kcore_modules (char*,struct map_groups*) ;
 int filename_from_kallsyms_filename (char*,char*,char const*) ;
 struct map_groups* map__kmaps (struct map*) ;

__attribute__((used)) static int validate_kcore_modules(const char *kallsyms_filename,
      struct map *map)
{
 struct map_groups *kmaps = map__kmaps(map);
 char modules_filename[PATH_MAX];

 if (!kmaps)
  return -EINVAL;

 if (!filename_from_kallsyms_filename(modules_filename, "modules",
          kallsyms_filename))
  return -EINVAL;

 if (do_validate_kcore_modules(modules_filename, kmaps))
  return -EINVAL;

 return 0;
}
