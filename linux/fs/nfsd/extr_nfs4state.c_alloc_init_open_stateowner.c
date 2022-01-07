
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_open {int op_seqid; int op_owner; } ;
struct nfsd4_compound_state {struct nfs4_client* clp; } ;
struct TYPE_2__ {int so_is_open_owner; int so_seqid; int * so_ops; } ;
struct nfs4_openowner {TYPE_1__ oo_owner; int oo_close_lru; int * oo_last_closed_stid; scalar_t__ oo_time; int oo_flags; } ;
struct nfs4_client {int cl_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int NFS4_OO_CONFIRMED ;
 struct nfs4_openowner* alloc_stateowner (int ,int *,struct nfs4_client*) ;
 struct nfs4_openowner* find_openstateowner_str_locked (unsigned int,struct nfsd4_open*,struct nfs4_client*) ;
 int hash_openowner (struct nfs4_openowner*,struct nfs4_client*,unsigned int) ;
 int nfs4_free_stateowner (TYPE_1__*) ;
 scalar_t__ nfsd4_has_session (struct nfsd4_compound_state*) ;
 int openowner_ops ;
 int openowner_slab ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs4_openowner *
alloc_init_open_stateowner(unsigned int strhashval, struct nfsd4_open *open,
      struct nfsd4_compound_state *cstate)
{
 struct nfs4_client *clp = cstate->clp;
 struct nfs4_openowner *oo, *ret;

 oo = alloc_stateowner(openowner_slab, &open->op_owner, clp);
 if (!oo)
  return ((void*)0);
 oo->oo_owner.so_ops = &openowner_ops;
 oo->oo_owner.so_is_open_owner = 1;
 oo->oo_owner.so_seqid = open->op_seqid;
 oo->oo_flags = 0;
 if (nfsd4_has_session(cstate))
  oo->oo_flags |= NFS4_OO_CONFIRMED;
 oo->oo_time = 0;
 oo->oo_last_closed_stid = ((void*)0);
 INIT_LIST_HEAD(&oo->oo_close_lru);
 spin_lock(&clp->cl_lock);
 ret = find_openstateowner_str_locked(strhashval, open, clp);
 if (ret == ((void*)0)) {
  hash_openowner(oo, clp, strhashval);
  ret = oo;
 } else
  nfs4_free_stateowner(&oo->oo_owner);

 spin_unlock(&clp->cl_lock);
 return ret;
}
