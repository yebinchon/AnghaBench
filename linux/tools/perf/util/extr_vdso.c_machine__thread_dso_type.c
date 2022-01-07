
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int mg; } ;
struct map {struct dso* dso; } ;
struct machine {int dummy; } ;
struct dso {char* long_name; } ;
typedef enum dso_type { ____Placeholder_dso_type } dso_type ;


 int DSO__TYPE_UNKNOWN ;
 int dso__type (struct dso*,struct machine*) ;
 struct map* map_groups__first (int ) ;
 struct map* map_groups__next (struct map*) ;

__attribute__((used)) static enum dso_type machine__thread_dso_type(struct machine *machine,
           struct thread *thread)
{
 enum dso_type dso_type = DSO__TYPE_UNKNOWN;
 struct map *map = map_groups__first(thread->mg);

 for (; map ; map = map_groups__next(map)) {
  struct dso *dso = map->dso;
  if (!dso || dso->long_name[0] != '/')
   continue;
  dso_type = dso__type(dso, machine);
  if (dso_type != DSO__TYPE_UNKNOWN)
   break;
 }

 return dso_type;
}
