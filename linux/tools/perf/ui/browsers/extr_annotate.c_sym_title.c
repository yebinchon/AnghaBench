
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {char* name; } ;
struct map {TYPE_1__* dso; } ;
struct TYPE_2__ {char* long_name; } ;


 char* percent_type_str (int) ;
 int snprintf (char*,size_t,char*,char*,char*,char*) ;

__attribute__((used)) static int sym_title(struct symbol *sym, struct map *map, char *title,
       size_t sz, int percent_type)
{
 return snprintf(title, sz, "%s  %s [Percent: %s]", sym->name, map->dso->long_name,
   percent_type_str(percent_type));
}
