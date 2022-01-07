
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ si_generation; } ;
struct nfs4_stid {int sc_lock; TYPE_1__ sc_stateid; } ;
typedef TYPE_1__ stateid_t ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void
nfs4_inc_and_copy_stateid(stateid_t *dst, struct nfs4_stid *stid)
{
 stateid_t *src = &stid->sc_stateid;

 spin_lock(&stid->sc_lock);
 if (unlikely(++src->si_generation == 0))
  src->si_generation = 1;
 memcpy(dst, src, sizeof(*dst));
 spin_unlock(&stid->sc_lock);
}
