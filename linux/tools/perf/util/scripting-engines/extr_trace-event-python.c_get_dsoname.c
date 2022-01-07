
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct map {TYPE_1__* dso; } ;
struct TYPE_4__ {scalar_t__ show_kernel_path; } ;
struct TYPE_3__ {char* long_name; char* name; } ;


 TYPE_2__ symbol_conf ;

__attribute__((used)) static const char *get_dsoname(struct map *map)
{
 const char *dsoname = "[unknown]";

 if (map && map->dso) {
  if (symbol_conf.show_kernel_path && map->dso->long_name)
   dsoname = map->dso->long_name;
  else
   dsoname = map->dso->name;
 }

 return dsoname;
}
