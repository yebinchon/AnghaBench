
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs4_stid {int dummy; } ;
struct TYPE_4__ {struct nfs4_file* sc_file; int sc_stateid; struct nfs4_client* sc_client; } ;
struct nfs4_layout_stateid {size_t ls_layout_type; TYPE_1__ ls_stid; scalar_t__ ls_recalled; TYPE_2__* ls_file; int ls_perfile; int ls_perclnt; } ;
struct nfs4_file {int fi_lo_recalls; int fi_lock; } ;
struct nfs4_client {int cl_lock; } ;
struct TYPE_6__ {int disable_recalls; } ;
struct TYPE_5__ {int nf_file; } ;


 int F_UNLCK ;
 int atomic_dec (int *) ;
 int kmem_cache_free (int ,struct nfs4_layout_stateid*) ;
 struct nfs4_layout_stateid* layoutstateid (struct nfs4_stid*) ;
 int list_del_init (int *) ;
 int nfs4_layout_stateid_cache ;
 TYPE_3__** nfsd4_layout_ops ;
 int nfsd_file_put (TYPE_2__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_nfsd_layoutstate_free (int *) ;
 int vfs_setlease (int ,int ,int *,void**) ;

__attribute__((used)) static void
nfsd4_free_layout_stateid(struct nfs4_stid *stid)
{
 struct nfs4_layout_stateid *ls = layoutstateid(stid);
 struct nfs4_client *clp = ls->ls_stid.sc_client;
 struct nfs4_file *fp = ls->ls_stid.sc_file;

 trace_nfsd_layoutstate_free(&ls->ls_stid.sc_stateid);

 spin_lock(&clp->cl_lock);
 list_del_init(&ls->ls_perclnt);
 spin_unlock(&clp->cl_lock);

 spin_lock(&fp->fi_lock);
 list_del_init(&ls->ls_perfile);
 spin_unlock(&fp->fi_lock);

 if (!nfsd4_layout_ops[ls->ls_layout_type]->disable_recalls)
  vfs_setlease(ls->ls_file->nf_file, F_UNLCK, ((void*)0), (void **)&ls);
 nfsd_file_put(ls->ls_file);

 if (ls->ls_recalled)
  atomic_dec(&ls->ls_stid.sc_file->fi_lo_recalls);

 kmem_cache_free(nfs4_layout_stateid_cache, ls);
}
