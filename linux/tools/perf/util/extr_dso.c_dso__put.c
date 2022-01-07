
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int refcnt; } ;


 int dso__delete (struct dso*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void dso__put(struct dso *dso)
{
 if (dso && refcount_dec_and_test(&dso->refcnt))
  dso__delete(dso);
}
