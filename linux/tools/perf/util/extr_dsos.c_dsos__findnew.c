
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsos {int lock; } ;
struct dso {int dummy; } ;


 int __dsos__findnew (struct dsos*,char const*) ;
 int down_write (int *) ;
 struct dso* dso__get (int ) ;
 int up_write (int *) ;

struct dso *dsos__findnew(struct dsos *dsos, const char *name)
{
 struct dso *dso;
 down_write(&dsos->lock);
 dso = dso__get(__dsos__findnew(dsos, name));
 up_write(&dsos->lock);
 return dso;
}
