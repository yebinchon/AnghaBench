
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsos {int dummy; } ;
struct dso {int dummy; } ;


 int __dsos__add (struct dsos*,struct dso*) ;
 struct dso* dso__new (char const*) ;
 int dso__put (struct dso*) ;
 int dso__set_basename (struct dso*) ;

struct dso *__dsos__addnew(struct dsos *dsos, const char *name)
{
 struct dso *dso = dso__new(name);

 if (dso != ((void*)0)) {
  __dsos__add(dsos, dso);
  dso__set_basename(dso);

  dso__put(dso);
 }
 return dso;
}
