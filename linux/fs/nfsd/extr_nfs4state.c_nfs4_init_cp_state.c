
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfsd_net {int s2s_cp_cl_id; int boot_time; int s2s_cp_lock; int s2s_cp_stateids; } ;
struct TYPE_4__ {int cl_id; int cl_boot; } ;
struct TYPE_5__ {int so_id; TYPE_1__ so_clid; } ;
struct TYPE_6__ {TYPE_2__ si_opaque; } ;
struct nfsd4_copy {TYPE_3__ cp_stateid; } ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int idr_alloc_cyclic (int *,struct nfsd4_copy*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int nfs4_init_cp_state(struct nfsd_net *nn, struct nfsd4_copy *copy)
{
 int new_id;

 idr_preload(GFP_KERNEL);
 spin_lock(&nn->s2s_cp_lock);
 new_id = idr_alloc_cyclic(&nn->s2s_cp_stateids, copy, 0, 0, GFP_NOWAIT);
 spin_unlock(&nn->s2s_cp_lock);
 idr_preload_end();
 if (new_id < 0)
  return 0;
 copy->cp_stateid.si_opaque.so_id = new_id;
 copy->cp_stateid.si_opaque.so_clid.cl_boot = nn->boot_time;
 copy->cp_stateid.si_opaque.so_clid.cl_id = nn->s2s_cp_cl_id;
 return 1;
}
