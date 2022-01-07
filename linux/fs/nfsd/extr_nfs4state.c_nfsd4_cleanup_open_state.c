
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd4_open {scalar_t__ op_odstate; TYPE_2__* op_stp; scalar_t__ op_file; TYPE_1__* op_openowner; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_stateowner {int dummy; } ;
struct TYPE_4__ {int st_stid; } ;
struct TYPE_3__ {struct nfs4_stateowner oo_owner; } ;


 int file_slab ;
 int kmem_cache_free (int ,scalar_t__) ;
 int nfs4_put_stateowner (struct nfs4_stateowner*) ;
 int nfs4_put_stid (int *) ;
 int nfsd4_cstate_assign_replay (struct nfsd4_compound_state*,struct nfs4_stateowner*) ;
 int odstate_slab ;

void nfsd4_cleanup_open_state(struct nfsd4_compound_state *cstate,
         struct nfsd4_open *open)
{
 if (open->op_openowner) {
  struct nfs4_stateowner *so = &open->op_openowner->oo_owner;

  nfsd4_cstate_assign_replay(cstate, so);
  nfs4_put_stateowner(so);
 }
 if (open->op_file)
  kmem_cache_free(file_slab, open->op_file);
 if (open->op_stp)
  nfs4_put_stid(&open->op_stp->st_stid);
 if (open->op_odstate)
  kmem_cache_free(odstate_slab, open->op_odstate);
}
