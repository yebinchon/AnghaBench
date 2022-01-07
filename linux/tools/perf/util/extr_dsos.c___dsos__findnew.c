
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsos {int dummy; } ;
struct dso {int dummy; } ;


 struct dso* __dsos__addnew (struct dsos*,char const*) ;
 struct dso* __dsos__find (struct dsos*,char const*,int) ;

struct dso *__dsos__findnew(struct dsos *dsos, const char *name)
{
 struct dso *dso = __dsos__find(dsos, name, 0);

 return dso ? dso : __dsos__addnew(dsos, name);
}
