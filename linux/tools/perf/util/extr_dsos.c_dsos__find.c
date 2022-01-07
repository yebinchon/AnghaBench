
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsos {int lock; } ;
struct dso {int dummy; } ;


 struct dso* __dsos__find (struct dsos*,char const*,int) ;
 int down_read (int *) ;
 int up_read (int *) ;

struct dso *dsos__find(struct dsos *dsos, const char *name, bool cmp_short)
{
 struct dso *dso;
 down_read(&dsos->lock);
 dso = __dsos__find(dsos, name, cmp_short);
 up_read(&dsos->lock);
 return dso;
}
