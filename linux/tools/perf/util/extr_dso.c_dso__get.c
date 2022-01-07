
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int refcnt; } ;


 int refcount_inc (int *) ;

struct dso *dso__get(struct dso *dso)
{
 if (dso)
  refcount_inc(&dso->refcnt);
 return dso;
}
