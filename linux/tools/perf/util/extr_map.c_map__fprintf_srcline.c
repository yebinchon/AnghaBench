
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct map {scalar_t__ dso; } ;
typedef int FILE ;


 char* SRCLINE_UNKNOWN ;
 int fprintf (int *,char*,char const*,char*) ;
 int free_srcline (char*) ;
 char* map__srcline (struct map*,int ,int *) ;

int map__fprintf_srcline(struct map *map, u64 addr, const char *prefix,
    FILE *fp)
{
 int ret = 0;

 if (map && map->dso) {
  char *srcline = map__srcline(map, addr, ((void*)0));
  if (srcline != SRCLINE_UNKNOWN)
   ret = fprintf(fp, "%s%s", prefix, srcline);
  free_srcline(srcline);
 }
 return ret;
}
