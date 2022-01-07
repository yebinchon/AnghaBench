
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {int refcnt; } ;


 int refcount_inc (int *) ;

struct nsinfo *nsinfo__get(struct nsinfo *nsi)
{
 if (nsi)
  refcount_inc(&nsi->refcnt);
 return nsi;
}
