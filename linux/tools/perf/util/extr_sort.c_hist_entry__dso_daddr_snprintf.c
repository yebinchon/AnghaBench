
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct map {int dummy; } ;
struct hist_entry {TYPE_2__* mem_info; } ;
struct TYPE_3__ {struct map* map; } ;
struct TYPE_4__ {TYPE_1__ daddr; } ;


 int _hist_entry__dso_snprintf (struct map*,char*,size_t,unsigned int) ;

__attribute__((used)) static int hist_entry__dso_daddr_snprintf(struct hist_entry *he, char *bf,
        size_t size, unsigned int width)
{
 struct map *map = ((void*)0);

 if (he->mem_info)
  map = he->mem_info->daddr.map;

 return _hist_entry__dso_snprintf(map, bf, size, width);
}
