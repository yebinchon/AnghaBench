
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {scalar_t__ dso; } ;


 char* map__size (struct map*) ;
 int repsep_snprintf (char*,size_t,char*,unsigned int,char*) ;

__attribute__((used)) static int _hist_entry__dso_size_snprintf(struct map *map, char *bf,
       size_t bf_size, unsigned int width)
{
 if (map && map->dso)
  return repsep_snprintf(bf, bf_size, "%*d", width,
           map__size(map));

 return repsep_snprintf(bf, bf_size, "%*s", width, "unknown");
}
