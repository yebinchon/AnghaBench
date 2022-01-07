
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfsd_net {int s2s_cp_lock; int s2s_cp_stateids; } ;
struct TYPE_5__ {int so_id; } ;
struct TYPE_6__ {TYPE_2__ si_opaque; } ;
struct nfsd4_copy {TYPE_3__ cp_stateid; TYPE_1__* cp_clp; } ;
struct TYPE_4__ {int net; } ;


 int idr_remove (int *,int ) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs4_free_cp_state(struct nfsd4_copy *copy)
{
 struct nfsd_net *nn;

 nn = net_generic(copy->cp_clp->net, nfsd_net_id);
 spin_lock(&nn->s2s_cp_lock);
 idr_remove(&nn->s2s_cp_stateids, copy->cp_stateid.si_opaque.so_id);
 spin_unlock(&nn->s2s_cp_lock);
}
