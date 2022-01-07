
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int so_id; } ;
struct TYPE_4__ {TYPE_1__ si_opaque; } ;
struct nfs4_stid {int (* sc_free ) (struct nfs4_stid*) ;TYPE_2__ sc_stateid; int sc_count; struct nfs4_client* sc_client; struct nfs4_file* sc_file; } ;
struct nfs4_file {int dummy; } ;
struct nfs4_client {int cl_lock; int cl_stateids; } ;


 int close_wq ;
 int idr_remove (int *,int ) ;
 int might_lock (int *) ;
 int put_nfs4_file (struct nfs4_file*) ;
 int refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nfs4_stid*) ;
 int wake_up_all (int *) ;

void
nfs4_put_stid(struct nfs4_stid *s)
{
 struct nfs4_file *fp = s->sc_file;
 struct nfs4_client *clp = s->sc_client;

 might_lock(&clp->cl_lock);

 if (!refcount_dec_and_lock(&s->sc_count, &clp->cl_lock)) {
  wake_up_all(&close_wq);
  return;
 }
 idr_remove(&clp->cl_stateids, s->sc_stateid.si_opaque.so_id);
 spin_unlock(&clp->cl_lock);
 s->sc_free(s);
 if (fp)
  put_nfs4_file(fp);
}
