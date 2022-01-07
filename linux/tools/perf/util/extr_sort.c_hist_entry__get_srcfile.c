
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct map {int dso; } ;
struct TYPE_2__ {int sym; struct map* map; } ;
struct hist_entry {int ip; TYPE_1__ ms; } ;


 int SRCLINE_UNKNOWN ;
 char* __get_srcline (int ,int ,int ,int,int,int,int ) ;
 int free (char*) ;
 int map__rip_2objdump (struct map*,int ) ;
 char* no_srcfile ;
 char* strchr (char*,char) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static char *hist_entry__get_srcfile(struct hist_entry *e)
{
 char *sf, *p;
 struct map *map = e->ms.map;

 if (!map)
  return no_srcfile;

 sf = __get_srcline(map->dso, map__rip_2objdump(map, e->ip),
    e->ms.sym, 0, 1, 1, e->ip);
 if (!strcmp(sf, SRCLINE_UNKNOWN))
  return no_srcfile;
 p = strchr(sf, ':');
 if (p && *sf) {
  *p = 0;
  return sf;
 }
 free(sf);
 return no_srcfile;
}
