
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_fh {int fh_handle; } ;
struct nfs4_file {int dummy; } ;
struct TYPE_3__ {int si_generation; } ;
struct TYPE_4__ {struct nfs4_file* sc_file; int sc_client; TYPE_1__ sc_stateid; } ;
struct nfs4_delegation {int dl_retries; TYPE_2__ dl_stid; int dl_recall; int dl_type; struct nfs4_clnt_odstate* dl_clnt_odstate; int dl_recall_lru; int dl_perclnt; int dl_perfile; } ;
struct nfs4_clnt_odstate {int dummy; } ;
struct nfs4_client {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int NFS4_OPEN_DELEGATE_READ ;
 int NFSPROC4_CLNT_CB_RECALL ;
 int atomic_long_dec (int *) ;
 long atomic_long_inc_return (int *) ;
 int deleg_slab ;
 scalar_t__ delegation_blocked (int *) ;
 struct nfs4_delegation* delegstateid (int ) ;
 int dprintk (char*) ;
 int get_clnt_odstate (struct nfs4_clnt_odstate*) ;
 int get_nfs4_file (struct nfs4_file*) ;
 long max_delegations ;
 int nfs4_alloc_stid (struct nfs4_client*,int ,int ) ;
 int nfs4_free_deleg ;
 int nfsd4_cb_recall_ops ;
 int nfsd4_init_cb (int *,int ,int *,int ) ;
 int num_delegations ;

__attribute__((used)) static struct nfs4_delegation *
alloc_init_deleg(struct nfs4_client *clp, struct nfs4_file *fp,
   struct svc_fh *current_fh,
   struct nfs4_clnt_odstate *odstate)
{
 struct nfs4_delegation *dp;
 long n;

 dprintk("NFSD alloc_init_deleg\n");
 n = atomic_long_inc_return(&num_delegations);
 if (n < 0 || n > max_delegations)
  goto out_dec;
 if (delegation_blocked(&current_fh->fh_handle))
  goto out_dec;
 dp = delegstateid(nfs4_alloc_stid(clp, deleg_slab, nfs4_free_deleg));
 if (dp == ((void*)0))
  goto out_dec;






 dp->dl_stid.sc_stateid.si_generation = 1;
 INIT_LIST_HEAD(&dp->dl_perfile);
 INIT_LIST_HEAD(&dp->dl_perclnt);
 INIT_LIST_HEAD(&dp->dl_recall_lru);
 dp->dl_clnt_odstate = odstate;
 get_clnt_odstate(odstate);
 dp->dl_type = NFS4_OPEN_DELEGATE_READ;
 dp->dl_retries = 1;
 nfsd4_init_cb(&dp->dl_recall, dp->dl_stid.sc_client,
        &nfsd4_cb_recall_ops, NFSPROC4_CLNT_CB_RECALL);
 get_nfs4_file(fp);
 dp->dl_stid.sc_file = fp;
 return dp;
out_dec:
 atomic_long_dec(&num_delegations);
 return ((void*)0);
}
