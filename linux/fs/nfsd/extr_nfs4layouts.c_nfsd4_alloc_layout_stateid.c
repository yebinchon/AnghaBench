
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfsd4_compound_state {struct nfs4_client* clp; } ;
struct nfs4_stid {scalar_t__ sc_type; struct nfs4_file* sc_file; } ;
struct TYPE_2__ {int sc_stateid; } ;
struct nfs4_layout_stateid {TYPE_1__ ls_stid; int ls_perfile; int ls_perclnt; int ls_file; int ls_recall; int ls_layout_type; int ls_mutex; int ls_layouts; int ls_lock; } ;
struct nfs4_file {int fi_lock; int fi_lo_states; int fi_deleg_file; } ;
struct nfs4_client {int cl_lock; int cl_lo_states; } ;


 int BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ NFS4_DELEG_STID ;
 scalar_t__ NFS4_LAYOUT_STID ;
 int NFSPROC4_CLNT_CB_LAYOUT ;
 int find_any_file (struct nfs4_file*) ;
 int get_nfs4_file (struct nfs4_file*) ;
 int kmem_cache_free (int ,struct nfs4_layout_stateid*) ;
 struct nfs4_layout_stateid* layoutstateid (struct nfs4_stid*) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 struct nfs4_stid* nfs4_alloc_stid (struct nfs4_client*,int ,int ) ;
 int nfs4_layout_stateid_cache ;
 int nfsd4_cb_layout_ops ;
 int nfsd4_free_layout_stateid ;
 int nfsd4_init_cb (int *,struct nfs4_client*,int *,int ) ;
 scalar_t__ nfsd4_layout_setlease (struct nfs4_layout_stateid*) ;
 int nfsd_file_get (int ) ;
 int nfsd_file_put (int ) ;
 int put_nfs4_file (struct nfs4_file*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int trace_nfsd_layoutstate_alloc (int *) ;

__attribute__((used)) static struct nfs4_layout_stateid *
nfsd4_alloc_layout_stateid(struct nfsd4_compound_state *cstate,
  struct nfs4_stid *parent, u32 layout_type)
{
 struct nfs4_client *clp = cstate->clp;
 struct nfs4_file *fp = parent->sc_file;
 struct nfs4_layout_stateid *ls;
 struct nfs4_stid *stp;

 stp = nfs4_alloc_stid(cstate->clp, nfs4_layout_stateid_cache,
     nfsd4_free_layout_stateid);
 if (!stp)
  return ((void*)0);

 get_nfs4_file(fp);
 stp->sc_file = fp;

 ls = layoutstateid(stp);
 INIT_LIST_HEAD(&ls->ls_perclnt);
 INIT_LIST_HEAD(&ls->ls_perfile);
 spin_lock_init(&ls->ls_lock);
 INIT_LIST_HEAD(&ls->ls_layouts);
 mutex_init(&ls->ls_mutex);
 ls->ls_layout_type = layout_type;
 nfsd4_init_cb(&ls->ls_recall, clp, &nfsd4_cb_layout_ops,
   NFSPROC4_CLNT_CB_LAYOUT);

 if (parent->sc_type == NFS4_DELEG_STID)
  ls->ls_file = nfsd_file_get(fp->fi_deleg_file);
 else
  ls->ls_file = find_any_file(fp);
 BUG_ON(!ls->ls_file);

 if (nfsd4_layout_setlease(ls)) {
  nfsd_file_put(ls->ls_file);
  put_nfs4_file(fp);
  kmem_cache_free(nfs4_layout_stateid_cache, ls);
  return ((void*)0);
 }

 spin_lock(&clp->cl_lock);
 stp->sc_type = NFS4_LAYOUT_STID;
 list_add(&ls->ls_perclnt, &clp->cl_lo_states);
 spin_unlock(&clp->cl_lock);

 spin_lock(&fp->fi_lock);
 list_add(&ls->ls_perfile, &fp->fi_lo_states);
 spin_unlock(&fp->fi_lock);

 trace_nfsd_layoutstate_alloc(&ls->ls_stid.sc_stateid);
 return ls;
}
