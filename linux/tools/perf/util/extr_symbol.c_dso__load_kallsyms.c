
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dummy; } ;
struct dso {int dummy; } ;


 int __dso__load_kallsyms (struct dso*,char const*,struct map*,int) ;

int dso__load_kallsyms(struct dso *dso, const char *filename,
         struct map *map)
{
 return __dso__load_kallsyms(dso, filename, map, 0);
}
