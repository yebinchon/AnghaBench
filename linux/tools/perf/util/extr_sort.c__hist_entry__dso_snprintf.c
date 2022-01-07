
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct map {TYPE_1__* dso; } ;
struct TYPE_2__ {char* long_name; char* short_name; } ;


 int repsep_snprintf (char*,size_t,char*,unsigned int,unsigned int,char const*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int _hist_entry__dso_snprintf(struct map *map, char *bf,
         size_t size, unsigned int width)
{
 if (map && map->dso) {
  const char *dso_name = verbose > 0 ? map->dso->long_name :
   map->dso->short_name;
  return repsep_snprintf(bf, size, "%-*.*s", width, width, dso_name);
 }

 return repsep_snprintf(bf, size, "%-*.*s", width, width, "[unknown]");
}
