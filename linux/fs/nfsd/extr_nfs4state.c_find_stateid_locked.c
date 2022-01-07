
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs4_stid {int sc_type; } ;
struct nfs4_client {int cl_stateids; } ;
struct TYPE_4__ {int so_id; } ;
struct TYPE_5__ {TYPE_1__ si_opaque; } ;
typedef TYPE_2__ stateid_t ;


 struct nfs4_stid* idr_find (int *,int ) ;

__attribute__((used)) static struct nfs4_stid *
find_stateid_locked(struct nfs4_client *cl, stateid_t *t)
{
 struct nfs4_stid *ret;

 ret = idr_find(&cl->cl_stateids, t->si_opaque.so_id);
 if (!ret || !ret->sc_type)
  return ((void*)0);
 return ret;
}
