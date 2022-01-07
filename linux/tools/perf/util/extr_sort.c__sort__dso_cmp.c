
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {struct dso* dso; } ;
struct dso {char* long_name; char* short_name; } ;
typedef int int64_t ;


 int cmp_null (struct dso*,struct dso*) ;
 int strcmp (char const*,char const*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int64_t _sort__dso_cmp(struct map *map_l, struct map *map_r)
{
 struct dso *dso_l = map_l ? map_l->dso : ((void*)0);
 struct dso *dso_r = map_r ? map_r->dso : ((void*)0);
 const char *dso_name_l, *dso_name_r;

 if (!dso_l || !dso_r)
  return cmp_null(dso_r, dso_l);

 if (verbose > 0) {
  dso_name_l = dso_l->long_name;
  dso_name_r = dso_r->long_name;
 } else {
  dso_name_l = dso_l->short_name;
  dso_name_r = dso_r->short_name;
 }

 return strcmp(dso_name_l, dso_name_r);
}
