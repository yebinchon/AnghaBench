
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {int refcnt; } ;


 int nsinfo__delete (struct nsinfo*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void nsinfo__put(struct nsinfo *nsi)
{
 if (nsi && refcount_dec_and_test(&nsi->refcnt))
  nsinfo__delete(nsi);
}
