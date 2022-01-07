
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sc_count; int sc_stateid; TYPE_2__* sc_file; } ;
struct nfs4_layout_stateid {int ls_recalled; int ls_lock; int ls_recall; TYPE_1__ ls_stid; int ls_layouts; } ;
struct TYPE_4__ {int fi_lo_recalls; } ;


 int atomic_inc (int *) ;
 scalar_t__ list_empty (int *) ;
 int nfsd4_run_cb (int *) ;
 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_nfsd_layout_recall (int *) ;

__attribute__((used)) static void
nfsd4_recall_file_layout(struct nfs4_layout_stateid *ls)
{
 spin_lock(&ls->ls_lock);
 if (ls->ls_recalled)
  goto out_unlock;

 ls->ls_recalled = 1;
 atomic_inc(&ls->ls_stid.sc_file->fi_lo_recalls);
 if (list_empty(&ls->ls_layouts))
  goto out_unlock;

 trace_nfsd_layout_recall(&ls->ls_stid.sc_stateid);

 refcount_inc(&ls->ls_stid.sc_count);
 nfsd4_run_cb(&ls->ls_recall);

out_unlock:
 spin_unlock(&ls->ls_lock);
}
