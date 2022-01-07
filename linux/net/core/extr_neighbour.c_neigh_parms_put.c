
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neigh_parms {int refcnt; } ;


 int neigh_parms_destroy (struct neigh_parms*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void neigh_parms_put(struct neigh_parms *parms)
{
 if (refcount_dec_and_test(&parms->refcnt))
  neigh_parms_destroy(parms);
}
